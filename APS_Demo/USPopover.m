//
//  USPopover.m
//  APS_Demo
//
//  Created by Rob Randell on 25/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "USPopover.h"

@implementation USPopover
@synthesize usTextView, usMapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad]; 
    
    NSString *fontName = @"Neo Sans";
    double fontSize = 15.0;
    
    [usTextView setFont:[UIFont fontWithName:fontName size:fontSize]];
    usTextView.text = [NSString stringWithFormat:@" APS Group\n Portland\n Oregon"];
    
    //MapViews configuration
    usMapView.showsUserLocation = NO;
    usMapView.scrollEnabled = NO;
    usMapView.zoomEnabled = NO;
    usMapView.mapType = MKMapTypeStandard;
    
    //GPS Instances
    CLLocationCoordinate2D usAPS;
    MKCoordinateRegion usRegion;
    MKCoordinateSpan usSpan;
    
    //GPS Locations
    usAPS.latitude = 45.523518;
    usAPS.longitude = -122.676129;
    
    //Load Pins and set Zoom factor
    MKPointAnnotation *usPoint = [[MKPointAnnotation alloc] init];
    usPoint.coordinate = usAPS;
    usSpan.latitudeDelta = 0.06;
    usSpan.longitudeDelta = 0.06;
    
    //Plot Pins and display map
    usRegion.center = usAPS;
    usRegion.span = usSpan;
    [usMapView addAnnotation:usPoint];
    [usMapView setRegion:usRegion animated:YES];

}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
