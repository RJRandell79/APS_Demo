//
//  NLPopover.m
//  APS_Demo
//
//  Created by Rob Randell on 25/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NLPopover.h"

@implementation NLPopover
@synthesize nlTextView;

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
    double fontSize = 15.0;
    
    [nlTextView setFont:[UIFont fontWithName:fontName size:fontSize]];
    nlTextView.text = [NSString stringWithFormat:@" APS Group\n BV Esp 405\n 5633\n AJ Eindhoven\n The Netherlands\n\n Web: www.apsgroup.nl\n Tel: +31 (0) 40 280 2345"];
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
