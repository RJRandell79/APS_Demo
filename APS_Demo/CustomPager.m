//
//  CustomPager.m
//  APS_Demo
//
//  Created by Rob Randell on 23/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomPager.h"
#import "AboutUs.h"

@interface CustomPager () 
@end

@implementation CustomPager


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"APS Group";
    //ViewController *VC_Page1 = [self.storyboard instantiateViewControllerWithIdentifier:@"Page1"];
    //[self addChildViewController:VC_Page1];
    
    [self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"Page1"]];
    [self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"Page2"]];
    [self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"Page3"]];

}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
    // e.g. self.myOutlet = nil;


   
}

@end
