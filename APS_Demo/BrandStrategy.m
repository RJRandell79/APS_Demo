//
//  BrandStrategy.m
//  APS_Demo
//
//  Created by Rob Randell on 14/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BrandStrategy.h"

@interface BrandStrategy ()

@end

@implementation BrandStrategy
@synthesize brandStrategy, pageTitle;

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
    self.title = @"Brand Strategy";
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 14.0;
    
    [pageTitle setFont:[UIFont fontWithName:fontName size:18.0]];
    pageTitle.text = [NSString stringWithFormat:@"Brand\nStrategy"];
    
    [brandStrategy setFont:[UIFont fontWithName:fontName size:fontSize]];
    brandStrategy.text = [NSString stringWithFormat:@"Origin, our in-house agency, is a creative agency with an integrated approach that delivers results through its proposition of DoMore™. It has three areas of expertise: brand, creative and digital, working with clients at both strategic and delivery levels.\n\nOrigin puts its clients’ brands, products and services ‘front of mind’ by understanding their customers, getting inside their heads and creating communications that deliver results. Origin applies its creative thinking to deliver inspirational, insightful, effective marketing campaigns. It creates, repositions and refreshes brands with one goal in mind – to help its clients build rapport and effectively engage the minds of employees, customers and stakeholders."];
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
