//
//  RenderingThreeD.m
//  APS_Demo
//
//  Created by Rob Randell on 14/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RenderingThreeD.h"

@interface RenderingThreeD ()

@end

@implementation RenderingThreeD
@synthesize renderingServices, pageTitle;

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
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"services_bg.png"]];
    self.title = @"3D Services";
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 14.0;
    
    [pageTitle setFont:[UIFont fontWithName:fontName size:18.0]];
    pageTitle.text = [NSString stringWithFormat:@"3D\nServices"];
    
    [renderingServices setFont:[UIFont fontWithName:fontName size:fontSize]];
    renderingServices.text = [NSString stringWithFormat:@"Whether it’s a mock-up for a product launch or a 3D store walk-though, our team can offer stunning visualisations that rival photography in their attention to detail. Our clients can make changes quickly and easily – updating old product models without the hassle and cost of a re-shoot, and share images instantly with colleagues across the world."];
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
