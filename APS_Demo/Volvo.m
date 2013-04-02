//
//  Volvo.m
//  APS_Demo
//
//  Created by Rob Randell on 28/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Volvo.h"

@implementation Volvo
@synthesize volvoWeb;

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
    self.title = @"Volvo";
    
    NSString *volvoPath = [[NSBundle mainBundle] pathForResource:@"volvo" 
                                                              ofType:@"html"
                                                         inDirectory:@"volvo"];
    NSURL *volvoURL = [NSURL fileURLWithPath:volvoPath];
    NSURLRequest *volvoRequest = [NSURLRequest requestWithURL:volvoURL];
    
    volvoWeb.opaque = NO;
    volvoWeb.scrollView.bounces = NO;
    [volvoWeb loadRequest:volvoRequest];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    return (orientation != UIDeviceOrientationPortrait) &&
    (orientation != UIDeviceOrientationPortraitUpsideDown);
}

@end
