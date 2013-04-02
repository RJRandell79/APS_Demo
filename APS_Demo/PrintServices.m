//
//  PrintServices.m
//  APS_Demo
//
//  Created by Rob Randell on 27/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PrintServices.h"

@implementation PrintServices
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
    self.title = @"Print Management";
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 15.0;
    
    [pageTitle setFont:[UIFont fontWithName:fontName size:18.0]];
    pageTitle.text = [NSString stringWithFormat:@"Print\nmanagement"];
    
    [desc setFont:[UIFont fontWithName:fontName size:fontSize]];
    desc.text = [NSString stringWithFormat:@"We offer extensive in-house print production facilities as well as a wide-ranging, global supply chain, meaning that we can fulfil all types of print services. With top-of-the-range sheet-fed printing presses we can cater for every type of job, from a small run of stationery through to large corporate brochures. We also produce data-driven, personalised direct marketing campaigns and web-to-print solutions, delivering high-quality digital print quickly and efficiently, on a variety of substrates."];  
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
