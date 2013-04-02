//
//  CreativeServices.m
//  APS_Demo
//
//  Created by Rob Randell on 26/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CreativeServices.h"

@implementation CreativeServices
@synthesize pageTitle, desc;
@synthesize popoverLabel1, popoverLabel2, popoverLabel3, popoverLabel4;
@synthesize popoverButton1, popoverButton2, popoverButton3, popoverButton4;

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
    self.title = @"Creative Services";
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 15.0;
    
    [pageTitle setFont:[UIFont fontWithName:fontName size:18.0]];
    pageTitle.text = [NSString stringWithFormat:@"Creative\nServices"];
    
    [desc setFont:[UIFont fontWithName:fontName size:fontSize]];
    desc.text = [NSString stringWithFormat:@"Our clients can take advantage of a full range of in-house design expertise, from our award-winning creative agency, Origin, to our studio teams, which offer the flexibility of an on-site studio or remote, off-site support. We also recognise that many of our clients have built up long-standing relationships with their roster of agencies, so we’re happy to work flexibly with other agencies to produce striking campaigns that achieve the right results."];
    
    [popoverLabel1 setFont:[UIFont fontWithName:fontName size:fontSize]];
    [popoverLabel2 setFont:[UIFont fontWithName:fontName size:fontSize]];
    [popoverLabel3 setFont:[UIFont fontWithName:fontName size:fontSize]];
    [popoverLabel4 setFont:[UIFont fontWithName:fontName size:fontSize]];

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
