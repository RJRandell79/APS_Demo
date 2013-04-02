//
//  Consultancy.m
//  APS_Demo
//
//  Created by Rob Randell on 27/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Consultancy.h"

@implementation Consultancy
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
    self.title = @"Consultancy";
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 15.0;
    
    [pageTitle setFont:[UIFont fontWithName:fontName size:18.0]];
    pageTitle.text = [NSString stringWithFormat:@"Consultancy"];
    
    [desc setFont:[UIFont fontWithName:fontName size:fontSize]];
    desc.text = [NSString stringWithFormat:@"Our dedicated on-site and near-site teams are led by experienced account directors who work to understand our clients’ objectives. To make sure we achieve the best possible cultural fit, we select account managers with relevant sector expertise and marketing experience to manage campaigns on a day-to-day basis and act as an extension of the in-house marketing team. We offer innovation and value-added services, such as technology workshops, regular briefings on industry developments and exhibition invitations. We also bring extra insight and knowledge by drawing on category specialists, such as retail consultants and postal experts."];

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
