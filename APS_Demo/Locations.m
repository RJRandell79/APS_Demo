//
//  Locations.m
//  APS_Demo
//
//  Created by Rob Randell on 24/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Locations.h"

@implementation Locations

@synthesize pageTitle, pageSubtitle, multipleClients, onlineTech, countriesServiced, locations, sitesOpened, globalSupply;
@synthesize usPopBtn, nlPopBtn, ukPopBtn;
@synthesize popoverController;

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
    
    NSString *fontName = @"Neo Sans";
    double fontSize = 12.0;
    
    [pageTitle setFont:[UIFont fontWithName:@"NeoSans-Bold" size:24.0]];
    [pageSubtitle setFont:[UIFont fontWithName:@"NeoSans-Bold" size:18.0]];
    
    [multipleClients setFont:[UIFont fontWithName:fontName size:fontSize]];
    [onlineTech setFont:[UIFont fontWithName:fontName size:fontSize]];
    [countriesServiced setFont:[UIFont fontWithName:fontName size:fontSize]];
    
    [locations setFont:[UIFont fontWithName:fontName size:fontSize]];
    [sitesOpened setFont:[UIFont fontWithName:fontName size:fontSize]];
    [globalSupply setFont:[UIFont fontWithName:fontName size:fontSize]];

}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
