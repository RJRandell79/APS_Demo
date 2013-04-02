//
//  DigitalServices.m
//  APS_Demo
//
//  Created by Rob Randell on 14/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DigitalServices.h"

@interface DigitalServices ()

@end

@implementation DigitalServices
@synthesize digitalServices, pageTitle;

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
    self.title = @"Digital Services";
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 14.0;
    
    [pageTitle setFont:[UIFont fontWithName:fontName size:18.0]];
    pageTitle.text = [NSString stringWithFormat:@"Digital\nServices"];
    
    [digitalServices setFont:[UIFont fontWithName:fontName size:fontSize]];
    digitalServices.text = [NSString stringWithFormat:@"Our digital services are at the cutting edge, delivering a wide range of technology – from websites to widgets, from intranets to social media, from strategy to execution. We have a wealth of talent for digital delivery. Diverse skills, multinational teams – our digital designers are experts in their field. We may have started in print but we know how to work up an outstanding online experience."];
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
