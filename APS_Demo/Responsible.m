//
//  Responsible.m
//  APS_Demo
//
//  Created by Rob Randell on 25/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Responsible.h"

@implementation Responsible
@synthesize marketPlace, workPlace, community, environment;
@synthesize pageTitle, pageSubtitle;

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
    
    NSString *marketPlacePath = [[NSBundle mainBundle] pathForResource:@"csr_marketplace" 
                                                                ofType:@"html"
                                                           inDirectory:@"marketplace"];
    NSURL *marketPlacefileURL = [NSURL fileURLWithPath:marketPlacePath];
    NSURLRequest *marketplaceRequest = [NSURLRequest requestWithURL:marketPlacefileURL];
    
    marketPlace.opaque = NO;
    marketPlace.scrollView.bounces = NO;
    [marketPlace loadRequest:marketplaceRequest];
    
    NSString *environmentPath = [[NSBundle mainBundle] pathForResource:@"csr_environment"
                                                                ofType:@"html"
                                                           inDirectory:@"environment"];
    NSURL *environmentfileURL = [NSURL fileURLWithPath:environmentPath];
    NSURLRequest *environmentRequest = [NSURLRequest requestWithURL:environmentfileURL];
    
    environment.opaque = NO;
    environment.scrollView.bounces = NO;
    [environment loadRequest:environmentRequest];
    
    NSString *workplacePath = [[NSBundle mainBundle] pathForResource:@"csr_workplace"
                                                           ofType:@"html"
                                                      inDirectory:@"workplace"];
    NSURL *workplacefileURL = [NSURL fileURLWithPath:workplacePath];
    NSURLRequest *workplaceRequest = [NSURLRequest requestWithURL:workplacefileURL];
    
    workPlace.opaque = NO;
    workPlace.scrollView.bounces = NO;
    [workPlace loadRequest:workplaceRequest];
    
    NSString *communityPath = [[NSBundle mainBundle] pathForResource:@"csr_community"
                                                              ofType:@"html"
                                                         inDirectory:@"community"];
    NSURL *communityfileURL = [NSURL fileURLWithPath:communityPath];
    NSURLRequest *communityRequest = [NSURLRequest requestWithURL:communityfileURL];
    
    community.opaque = NO;
    community.scrollView.bounces = NO;
    [community loadRequest:communityRequest];
    
    [pageTitle setFont:[UIFont fontWithName:@"NeoSans-Bold" size:24.0]];
    [pageSubtitle setFont:[UIFont fontWithName:@"Neo Sans" size:18.0]];

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
