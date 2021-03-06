#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <image_transport/subscriber.h>

#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>

#include <std_msgs/Float32MultiArray.h>

#include <opencv2/opencv.hpp>
#include <opencv2/objdetect/objdetect.hpp>

class Blob_Detector
{
    ros::NodeHandle n_;
    image_transport::ImageTransport it_;
    image_transport::Subscriber image_sub_;
    ros::Publisher feature_pub_;

    cv::SimpleBlobDetector::Params params;
    cv::Ptr<cv::FeatureDetector> blob_detector;



public:

    int distBetweenBlobs;
    int minArea;
    int maxArea;

    Blob_Detector()
        : it_( n_ )
    {
        ROS_INFO( "Starting the Blob_Detector" );
        image_sub_ = it_.subscribe( "thresh/image", 1, &Blob_Detector::callBack, this );
        feature_pub_ = n_.advertise<std_msgs::Float32MultiArray>( "/detector/coords", 1 );

        if( !paramsSet() )
        {
            ROS_ERROR( "Set all params for this node to work" );
        }
        else
        {
            ROS_INFO( "All params are set" );
        }

        setParams();
        updateBlobDetector();

        ROS_INFO( "Started the Blob_Detector" );

    }

    void callBack( const sensor_msgs::ImageConstPtr &msg )
    {

        if( paramsChanged() )
            updateBlobDetector();

        cv_bridge::CvImageConstPtr cv_img;
        cv_img = cv_bridge::toCvCopy( msg, sensor_msgs::image_encodings::BGR8 );

        std::vector<cv::KeyPoint> keypoints;
        blob_detector->detect( cv_img->image, keypoints );

        std_msgs::Float32MultiArray newMes;

        for( int i = 0; i < keypoints.size(); i++ )
        {

            newMes.data.push_back( keypoints.at(i).pt.x );
            newMes.data.push_back( keypoints.at(i).pt.y );

            std::cout << keypoints.at(i).pt.x << " " << keypoints.at(i).pt.y;
        }

        std::cout << std::endl;

        feature_pub_.publish( newMes );

    }

    bool paramsSet()
    {
        bool allSet = true;

        if( !n_.hasParam( "blob_detector/distBetweenBlobs" ))
        {
            ROS_ERROR( "Param blob_detector/distBetweenBlobs not set" );
            allSet = false;
        }

        if( !n_.hasParam( "blob_detector/minArea" ))
        {
            ROS_ERROR( "Param blob_detector/minArea not set" );
            allSet = false;
        }
        if( !n_.hasParam( "blob_detector/maxArea" ))
        {
            ROS_ERROR( "Param blob_detector/maxArea not set" );
            allSet = false;
        }

        return allSet;
    }

    bool paramsChanged()
    {
        bool change = false;
        int temp;

        n_.getParam( "blob_detector/distBetweenBlobs", temp );
        if( temp != distBetweenBlobs )
            change = true;

        n_.getParam( "blob_detector/minArea", temp );
        if( temp != minArea )
            change = true;

        n_.getParam( "blob_detector/maxArea", temp );
        if( temp != maxArea )
            change = true;

        return change;

    }

    void updateBlobDetector()
    {
        params.filterByInertia = false;
        params.filterByConvexity = false;
        params.filterByColor = false;
        params.filterByCircularity = false;
		params.filterByArea = true;
        params.minDistBetweenBlobs = distBetweenBlobs;
        params.minArea = minArea;
        params.maxArea = maxArea;

        blob_detector = new cv::SimpleBlobDetector(params);
        blob_detector->create("SimpleBlob");

    }

    void setParams()
    {

        n_.getParam( "blob_detector/distBetweenBlobs", distBetweenBlobs );
        n_.getParam( "blob_detector/minArea", minArea );
        n_.getParam( "blob_detector/maxArea", maxArea );

    }

};

int main( int argc, char** argv )
{

    ros::init( argc, argv, "blob_detector" );

    Blob_Detector theBlobDetector;

    ros::spin();

}
