//
//  Services.m
//  APS_Demo
//
//  Created by Rob Randell on 25/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Services.h"

@implementation Services
@synthesize crossMediaComms, creativeServices, itSolutions, dataServices, consultancy, printManagement, retailServices, logistics;
@synthesize crossMediaCommsLabel, creativeServicesLabel, itSolutionsLabel, dataServicesLabel, consultancyLabel, printManagementLabel, retailServicesLabel, logisticsLabel;

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
    self.title = @"Services";
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"services_menu.png"]];
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 15.0;
    
    [crossMediaCommsLabel setFont:[UIFont fontWithName:fontName size:fontSize]];
    [creativeServicesLabel setFont:[UIFont fontWithName:fontName size:fontSize]];
    [itSolutionsLabel setFont:[UIFont fontWithName:fontName size:fontSize]];
    [dataServicesLabel setFont:[UIFont fontWithName:fontName size:fontSize]];
    [consultancyLabel setFont:[UIFont fontWithName:fontName size:fontSize]];
    [printManagementLabel setFont:[UIFont fontWithName:fontName size:fontSize]];
    [retailServicesLabel setFont:[UIFont fontWithName:fontName size:fontSize]];
    [logisticsLabel setFont:[UIFont fontWithName:fontName size:fontSize]];
    
    crossMediaCommsLabel.text = [NSString stringWithFormat:@"Cross-media\ncommunications"];
    creativeServicesLabel.text = [NSString stringWithFormat:@"Creative\nservices"];
    itSolutionsLabel.text = [NSString stringWithFormat:@"IT\nsolutions"];
    dataServicesLabel.text = [NSString stringWithFormat:@"Data\nservices"];
    consultancyLabel.text = [NSString stringWithFormat:@"Consultancy"];
    printManagementLabel.text = [NSString stringWithFormat:@"Print\nmanagement"];
    retailServicesLabel.text = [NSString stringWithFormat:@"Retail\nservices"];
    logisticsLabel.text = [NSString stringWithFormat:@"Logistics"];
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    NSLog(@"View Unloaded");

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    return (orientation != UIDeviceOrientationPortrait) &&
    (orientation != UIDeviceOrientationPortraitUpsideDown);
}

@end
