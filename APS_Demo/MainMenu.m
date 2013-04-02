//
//  MainMenu.m
//  APS_Demo
//
//  Created by Rob Randell on 22/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainMenu.h"

@implementation MainMenu
@synthesize aboutUs, ourServices, meetTeam, caseStudies;
@synthesize aboutUsBtn, ourServicesBtn, meetTeamBtn, caseStudiesBtn;
@synthesize twitterMasterView = _twitterMasterView;
@synthesize twitterPopoverController = _twitterPopoverController;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)displayTweets:(id)sender {
    
    if (_twitterMasterView == nil) {
        
        self.twitterMasterView = [[[TwitterMasterView alloc] initWithStyle:UITableViewStylePlain] autorelease];
        //_twitterMasterView.title = @"Loading Tweets...";
        
        UINavigationController *twitterNav = [[UINavigationController alloc] initWithRootViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"Twitter"]];
        twitterNav.title = @"Loading Tweets...";
        
        self.twitterPopoverController = [[[UIPopoverController alloc] initWithContentViewController:twitterNav] autorelease];
    }
    [self.twitterPopoverController presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
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
    self.view.clipsToBounds = YES;
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"main_menu_bg.png"]];
    
    NSString *fontName = @"NeoSans-Medium";
    double fontSize = 15.0;
    [aboutUs setFont:[UIFont fontWithName:fontName size:fontSize]];
    [ourServices setFont:[UIFont fontWithName:fontName size:fontSize]];
    [meetTeam setFont:[UIFont fontWithName:fontName size:fontSize]];
    [caseStudies setFont:[UIFont fontWithName:fontName size:fontSize]];

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
/*
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}
*/

@end
