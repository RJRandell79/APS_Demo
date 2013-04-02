//
//  Logistics.m
//  APS_Demo
//
//  Created by Rob Randell on 27/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Logistics.h"

@implementation Logistics
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
    self.title = @"Logistics";
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 15.0;
    
    [pageTitle setFont:[UIFont fontWithName:fontName size:18.0]];
    pageTitle.text = [NSString stringWithFormat:@"Logistics"];
    
    [desc setFont:[UIFont fontWithName:fontName size:fontSize]];

    desc.text = [NSString stringWithFormat:@"Whether it’s collation and distribution of several thousand point-of-sale packs or simply desktop delivery of promotional items, we can fulfil all types of requirements. We manage our clients’ stock effectively in our extensive environmentally-controlled warehouse facilities, and our sophisticated e-logistics technology helps to reduce waste and obsolescence. Our dedicated customer services team supports all aspects of the ordering and stock management process via multiple ordering channels – online, by email, via intranet, phone or fax. We have a wide market influence with postal suppliers, regulators and industry leaders and extensive experience of downstream access (DSA) implementation and management. We have excellent relationships with leading logistics and courier providers for delivery worldwide, so our clients can take advantage of our preferential rates."];
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
