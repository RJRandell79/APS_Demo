//
//  NLMapView.m
//  APS_Demo
//
//  Created by Rob Randell on 12/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NLMapView.h"

@interface NLMapView ()

@end

@implementation NLMapView
@synthesize mapViewNL, nlTextView;

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
    
    [nlTextView setFont:[UIFont fontWithName:fontName size:fontSize]];
    nlTextView.text = [NSString stringWithFormat:@" APS Group BV\n Esp 405\n 5633 AJ Eindhoven\n The Netherlands\n\n Web: www.apsgroup.nl\n Telephone: +31 (0) 40 280 23 45."];
    
    //MapViews configuration
    mapViewNL.showsUserLocation = NO;
    mapViewNL.scrollEnabled = NO;
    mapViewNL.zoomEnabled = NO;
    mapViewNL.mapType = MKMapTypeStandard;
    
    //GPS Instances
    CLLocationCoordinate2D dutchAPS;
    MKCoordinateRegion dutchRegion;
    MKCoordinateSpan dutchSpan;

    //GPS Locations
    dutchAPS.latitude = 51.488171;
    dutchAPS.longitude = 5.489044;
    
    //Load Pins and set Zoom factor
    MKPointAnnotation *dutchPoint = [[MKPointAnnotation alloc] init];
    dutchPoint.coordinate = dutchAPS;
    dutchSpan.latitudeDelta = 0.06;
    dutchSpan.longitudeDelta = 0.06;
    
    //Plot Pins and display map
    dutchRegion.center = dutchAPS;
    dutchRegion.span = dutchSpan;
    [mapViewNL addAnnotation:dutchPoint];
    [mapViewNL setRegion:dutchRegion animated:YES];


}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
