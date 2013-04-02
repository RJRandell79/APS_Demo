//
//  ITSolutions.m
//  APS_Demo
//
//  Created by Rob Randell on 26/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ITSolutions.h"

@implementation ITSolutions
@synthesize pageTitle, solutionsText;

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
    self.title = @"IT Solutions";
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 15.0;
    
    [pageTitle setFont:[UIFont fontWithName:fontName size:18.0]];
    pageTitle.text = [NSString stringWithFormat:@"IT\nSolutions"];
    
    [solutionsText setFont:[UIFont fontWithName:fontName size:fontSize]];
    solutionsText.text = [NSString stringWithFormat:@"Our Marketing Operations Suite is an intuitive and intelligent  range of online tools that helps control marketing campaigns in a more efficient and cost-effective way, providing full transparency and a complete audit trail.\n\nOur technology helps our clients to do more with their available resources. Our project management tools give a central overview of all marketing operations activity, progress, costs and savings. A full audit trail is available showing the approval process and version control. Digital assets can be stored and located easily within the system, reducing costs and controlling brand. Customised marketing templates manage brand compliance and help roll out local, tactical campaigns very speedily. Users can order items online via the web shop interface and see accurate stock levels in real time worldwide."];

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
