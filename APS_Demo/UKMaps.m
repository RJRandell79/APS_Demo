//
//  UKMaps.m
//  APS_Demo
//
//  Created by Rob Randell on 13/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UKMaps.h"

@interface UKMaps ()

@end

@implementation UKMaps
@synthesize ukMapView, ukTextView, distance, locationController, mapTypeController, loadMaps;

- (IBAction)changeLocation:(id)sender {
   
    if (locationController.selectedSegmentIndex==0) {
        
        CLLocationCoordinate2D englandAPS;
        MKCoordinateRegion englandRegion;
        MKCoordinateSpan englandSpan;
        
        englandAPS.latitude = 53.39644;
        englandAPS.longitude = -2.185303;
        
        MKPointAnnotation *englandPoint = [[MKPointAnnotation alloc] init];
        englandPoint.coordinate = englandAPS;
        englandSpan.latitudeDelta = 0.06;
        englandSpan.longitudeDelta = 0.06;
        
        englandRegion.center = englandAPS;
        englandRegion.span = englandSpan;
        [ukMapView addAnnotation:englandPoint];
        [ukMapView setRegion:englandRegion animated:YES];
        
        ukTextView.text = [NSString stringWithFormat:@" APS Group\n Bird Hall Lane\n Cheadle Heath\n Stockport\n SK3 0ZP\n\n Web: www.apsgroup.co.uk\n Tel: +44 (0) 161 495 4500"];
                
        double englandLat = ukMapView.userLocation.location.coordinate.latitude;
        double englandLong = ukMapView.userLocation.location.coordinate.longitude;
        
        CLLocationCoordinate2D myLocation;
        myLocation.latitude = englandLat;
        myLocation.longitude = englandLong;
        
        CLLocation *currentLocation = [[CLLocation alloc] initWithLatitude:englandLat longitude:englandLong];
        CLLocation *cheadleLocation = [[CLLocation alloc] initWithLatitude:englandAPS.latitude longitude:englandAPS.longitude];
                
        CLLocationDistance cheadleDistance = ([currentLocation distanceFromLocation:cheadleLocation]) * 0.000621371192;
        
        distance.text = [NSString stringWithFormat:@"You are %.0f miles away", cheadleDistance];
        loadMaps.tag = 101;
        
    }
    else if (locationController.selectedSegmentIndex==1) {
        
        CLLocationCoordinate2D scotlandAPS;
        MKCoordinateRegion scotlandRegion;
        MKCoordinateSpan scotlandSpan;
        
        scotlandAPS.latitude = 55.97076;
        scotlandAPS.longitude = -3.177066;
        
        MKPointAnnotation *scotlandPoint = [[MKPointAnnotation alloc] init];
        scotlandPoint.coordinate = scotlandAPS;
        scotlandSpan.latitudeDelta = 0.06;
        scotlandSpan.longitudeDelta = 0.06;
        
        scotlandRegion.center = scotlandAPS;
        scotlandRegion.span = scotlandSpan;
        [ukMapView addAnnotation:scotlandPoint];
        [ukMapView setRegion:scotlandRegion animated:YES];    
        
        ukTextView.text = [NSString stringWithFormat:@" APS Group Scotland\n 21 Tennant Street\n Edinburgh\n City of Edinburgh\n EH6 5NA\n\n Web: www.apsgroup.co.uk\n Tel: +44 (0) 131 629 9966"];
        
        double scotlandLat = ukMapView.userLocation.location.coordinate.latitude;
        double scotlandLong = ukMapView.userLocation.location.coordinate.longitude;
        
        CLLocationCoordinate2D myLocation;
        myLocation.latitude = scotlandLat;
        myLocation.longitude = scotlandLong;
        
        CLLocation *currentLocation = [[CLLocation alloc] initWithLatitude:scotlandLat longitude:scotlandLong];
        CLLocation *scotlandLocation = [[CLLocation alloc] initWithLatitude:scotlandAPS.latitude longitude:scotlandAPS.longitude];
        
        CLLocationDistance scotlandDistance = ([currentLocation distanceFromLocation:scotlandLocation]) * 0.000621371192;
        
        distance.text = [NSString stringWithFormat:@"You are %.0f miles away", scotlandDistance];
        loadMaps.tag = 102;
        
        NSString *mapURL = [NSString stringWithFormat:@"http://maps.google.com/maps?f=d&hl=en&geocode=&saddr=%f,%f&daddr=%f,%f&ie=UTF8&z=12", scotlandAPS.latitude, scotlandAPS.longitude, myLocation.latitude, myLocation.longitude];
        
        NSLog(@"URL: %@", mapURL);
    }
}

- (IBAction)changeMapType:(id)sender {
    
	if (mapTypeController.selectedSegmentIndex==0) {
		ukMapView.mapType = MKMapTypeStandard;
	}
	else if (mapTypeController.selectedSegmentIndex==1) {
		ukMapView.mapType = MKMapTypeSatellite;
	}
	else if (mapTypeController.selectedSegmentIndex==2) {
		ukMapView.mapType = MKMapTypeHybrid;
	}
}

- (IBAction)loadGoogleMaps:(UIButton *)sender {
    
    int mapTag = sender.tag;
    
    double deviceLocationLat = ukMapView.userLocation.location.coordinate.latitude;
    double deviceLocationLong = ukMapView.userLocation.location.coordinate.longitude;
    
    if (mapTag == 101) {
        
        CLLocationCoordinate2D englandAPS;  
        englandAPS.latitude = 53.39649;
        englandAPS.longitude = -2.185303;
        
        NSString *mapURL = [NSString stringWithFormat:@"http://maps.google.com/maps?f=d&hl=en&geocode=&saddr=%f,%f&daddr=%f,%f&ie=UTF8&z=12", deviceLocationLat, deviceLocationLong, englandAPS.latitude, englandAPS.longitude];
        
        [[UIApplication sharedApplication] openURL: [NSURL URLWithString: mapURL]];
        
    }

    else if (mapTag == 102) {
        
        CLLocationCoordinate2D scotlandAPS;  
        scotlandAPS.latitude = 55.97076;
        scotlandAPS.longitude = -3.177066;
        
        NSString *mapURL = [NSString stringWithFormat:@"http://maps.google.com/maps?f=d&hl=en&geocode=&saddr=%f,%f&daddr=%f,%f&ie=UTF8&z=12", deviceLocationLat, deviceLocationLong, scotlandAPS.latitude, scotlandAPS.longitude];
        
        [[UIApplication sharedApplication] openURL: [NSURL URLWithString: mapURL]];
        
    }

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSString *fontName = @"Neo Sans";
    double fontSize = 15.0;
    
    [ukTextView setFont:[UIFont fontWithName:fontName size:fontSize]];
    
    ukMapView.showsUserLocation = YES;
    ukMapView.scrollEnabled = YES;
    ukMapView.zoomEnabled = YES;
    ukMapView.mapType = MKMapTypeStandard;
    
    CLLocationCoordinate2D englandAPS;
    MKCoordinateRegion englandRegion;
    MKCoordinateSpan englandSpan;
    
    englandAPS.latitude = 53.39644;
    englandAPS.longitude = -2.185303;
    
    MKPointAnnotation *englandPoint = [[MKPointAnnotation alloc] init];
    englandPoint.coordinate = englandAPS;
    englandSpan.latitudeDelta = 0.06;
    englandSpan.longitudeDelta = 0.06;
    
    englandRegion.center = englandAPS;
    englandRegion.span = englandSpan;
    [ukMapView addAnnotation:englandPoint];
    [ukMapView setRegion:englandRegion animated:YES];
    
    ukTextView.text = [NSString stringWithFormat:@" APS Group\n Bird Hall Lane\n Cheadle Heath\n Stockport\n SK3 0ZP\n\n Web: www.apsgroup.co.uk\n Tel: +44 (0) 161 495 4500"];
    
    double englandLat = ukMapView.userLocation.location.coordinate.latitude;
    double englandLong = ukMapView.userLocation.location.coordinate.longitude;
    
    CLLocationCoordinate2D myLocation;
    myLocation.latitude = englandLat;
    myLocation.longitude = englandLong;
    
    CLLocation *currentLocation = [[CLLocation alloc] initWithLatitude:englandLat longitude:englandLong];
    CLLocation *cheadleLocation = [[CLLocation alloc] initWithLatitude:englandAPS.latitude longitude:englandAPS.longitude];
    
    CLLocationDistance cheadleDistance = ([currentLocation distanceFromLocation:cheadleLocation]) * 0.000621371192;
    
    distance.text = [NSString stringWithFormat:@"You are %.0f miles away", cheadleDistance];
    loadMaps.tag = 101;

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
