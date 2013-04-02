//
//  StudioServices.m
//  APS_Demo
//
//  Created by Rob Randell on 14/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StudioServices.h"

@interface StudioServices ()

@end

@implementation StudioServices
@synthesize studioServices, pageTitle;

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
    self.title = @"Studio Services";
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 14.0;
    
    [pageTitle setFont:[UIFont fontWithName:fontName size:18.0]];
    pageTitle.text = [NSString stringWithFormat:@"Studio\nServices"];
    
    [studioServices setFont:[UIFont fontWithName:fontName size:fontSize]];
    studioServices.text = [NSString stringWithFormat:@"Matching the right creative resource to the right project is an area we specialise in. We make sure that our clients’ simple artwork needs are handled by the right level of resource. Our studio designers take care of routine retouching and amends, which saves our clients time and money. It also frees up their creative agencies to focus on what they’re good at. They can concentrate on brand strategy while we focus on campaign executions.\n\nOur clients can use our flexible studio resources whenever they need them. There are no fixed costs or monthly retainers. We operate as brand guardians for our clients, working as an extension of their marketing teams. We support them either on-site or remotely from one of our studios worldwide.\n\nWe also make sure their copy has been thoroughly checked by our professional proofreaders before it goes live, giving them absolute peace of mind and reducing waste with our responsible 'right first time' approach."];

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
