//
//  AboutUs.m
//  APS_Demo
//
//  Created by Rob Randell on 23/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AboutUs.h"

@implementation AboutUs
@synthesize pageTitle, keyFacts, established, finaciallyStable, employeesWorldwide, multiService, hubSatellite, distService, leadingTech, brandReflects, videoFrame, solutionsProvider, secondPara, firstPara;
@synthesize moviePlayer;

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

- (IBAction)playMovie:(id)sender {
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"APSMovie" ofType:@"m4v"]];
    
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    
    UIButton *playButton = (UIButton *)sender;
    
    [moviePlayer.view setFrame:CGRectMake(playButton.frame.origin.x, 
                                          playButton.frame.origin.y, 
                                          playButton.frame.size.width, 
                                          playButton.frame.size.height)];
    
    [self.view addSubview:moviePlayer.view];
    [moviePlayer setFullscreen:NO animated:YES];

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
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 15.0;
    
    [pageTitle setFont:[UIFont fontWithName:@"NeoSans-Bold" size:24.0]];
    
    [keyFacts setFont:[UIFont fontWithName:fontName size:fontSize]];
    [established setFont:[UIFont fontWithName:fontName size:fontSize]];
    [finaciallyStable setFont:[UIFont fontWithName:fontName size:fontSize]];
    [employeesWorldwide setFont:[UIFont fontWithName:fontName size:fontSize]];
    [multiService setFont:[UIFont fontWithName:fontName size:fontSize]];
    [hubSatellite setFont:[UIFont fontWithName:fontName size:fontSize]];
    [distService setFont:[UIFont fontWithName:fontName size:fontSize]];
    [leadingTech setFont:[UIFont fontWithName:fontName size:fontSize]];
    [brandReflects setFont:[UIFont fontWithName:fontName size:fontSize]];
        
    [solutionsProvider setFont:[UIFont fontWithName:@"NeoSans-Bold" size:18.0]];
    [firstPara setFont:[UIFont fontWithName:@"Neo Sans" size:12.0]];
    [secondPara setFont:[UIFont fontWithName:@"Neo Sans" size:12.0]];
    
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
    [moviePlayer pause];
    // e.g. self.myOutlet = nil;
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
