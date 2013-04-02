//
//  RetailServices.m
//  APS_Demo
//
//  Created by Rob Randell on 27/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RetailServices.h"

@implementation RetailServices
@synthesize pageTitle, desc;

/*
- (IBAction)backToMenu:(id)sender {
    
    NSArray *viewControllers = self.navigationController.viewControllers;
    [self.navigationController popToViewController:[viewControllers objectAtIndex:1] animated:YES];
    
}
*/ 

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
    //self.navigationItem.hidesBackButton = YES;
    //UIBarButtonItem *menuButton = [[UIBarButtonItem alloc] initWithTitle:@"Service Menu" style:UIBarButtonItemStylePlain target:self action:@selector(backToMenu:)];          
    //self.navigationItem.leftBarButtonItem = menuButton;    
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"services_bg.png"]];
    self.title = @"Retail Services";
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 15.0;
    
    [pageTitle setFont:[UIFont fontWithName:fontName size:18.0]];
    pageTitle.text = [NSString stringWithFormat:@"Retail\nservices"];
    
    [desc setFont:[UIFont fontWithName:fontName size:fontSize]];
    
    desc.text = [NSString stringWithFormat:@"We design, create and distribute point-of-sale to over 6,500 stores throughout Europe. Our retail consultants are experts in creating the best possible in-store experience. We have extensive experience in offering POS supply chain management, 3D cardboard engineering, fulfilment services, store support, mock-shop facility, loyalty card management, shelf edge label (SEL) solutions."];
    
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
