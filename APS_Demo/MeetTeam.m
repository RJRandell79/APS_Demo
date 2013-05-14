//
//  MeetTeam.m
//  APS_Demo
//
//  Created by Rob Randell on 28/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MeetTeam.h"

@implementation MeetTeam
@synthesize teamPortrait, teamName, teamTitle, teamBio;
@synthesize teamButton, emailButton, emailLabel;

- (IBAction)teamButton:(UIButton *)sender {
    
    int tagNumber = sender.tag;
    
    if (tagNumber == 101) {
        
        teamName.text = [NSString stringWithFormat:@"MD"];
        teamTitle.text = [NSString stringWithFormat:@"Managing Director"];
        teamBio.text = [NSString stringWithFormat:@"blurb."];
        
        emailLabel.text = [NSString stringWithFormat:@"Send email to email1@domain.com"];
        teamPortrait.image = [UIImage imageNamed:@"portrait87.png"];
        emailButton.tag = 101;
        
    }
    if (tagNumber == 102) {
        
        teamName.text = [NSString stringWithFormat:@"JH"];
        teamTitle.text = [NSString stringWithFormat:@"Director"];
        teamBio.text = [NSString stringWithFormat:@"blurb."];
        
        emailLabel.text = [NSString stringWithFormat:@"Send email to email2@domain.com"];
        teamPortrait.image = [UIImage imageNamed:@"portrait42.png"];
        emailButton.tag = 102;
        
    }
    if (tagNumber == 103) {
        
        teamName.text = [NSString stringWithFormat:@"KN"];
        teamTitle.text = [NSString stringWithFormat:@"Director"];
        teamBio.text = [NSString stringWithFormat:@"blurb."];
        
        emailLabel.text = [NSString stringWithFormat:@"Send email to email3@domain.com"];
        teamPortrait.image = [UIImage imageNamed:@"portrait29.png"];
        emailButton.tag = 103;
        
    }
    else if (tagNumber == 104) {
        
        teamName.text = [NSString stringWithFormat:@"GJ"];
        teamTitle.text = [NSString stringWithFormat:@"Director"]; 
        teamBio.text = [NSString stringWithFormat:@"blurb."];
        
        emailLabel.text = [NSString stringWithFormat:@"Send email to email4@domain.com"];
        teamPortrait.image = [UIImage imageNamed:@"DPP_0049.png"];
        emailButton.tag = 104;
        
    }
}

- (IBAction)emailButton:(UIButton *)sender {
    
    int tagEmailNumber = sender.tag;
    
    if (tagEmailNumber == 101) {
        NSString *emailAddress = @"email1@domain.com";
        
        MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
        composer.mailComposeDelegate = self;
        
        if ([MFMailComposeViewController canSendMail]) {
            [composer setToRecipients:[NSArray arrayWithObjects:emailAddress, nil]];
            [composer setSubject:@"More info please!"];
            [composer setMessageBody:@"This is the body" isHTML:NO];
            
            [self presentModalViewController:composer animated:YES];
        }
    }
    if (tagEmailNumber == 102) {
        NSString *emailAddress = @"email2@domain.com";
        
        MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
        composer.mailComposeDelegate = self;
        
        if ([MFMailComposeViewController canSendMail]) {
            [composer setToRecipients:[NSArray arrayWithObjects:emailAddress, nil]];
            [composer setSubject:@"More info please!"];
            [composer setMessageBody:@"This is the body" isHTML:NO];
            
            [self presentModalViewController:composer animated:YES];
        }
    }
    if (tagEmailNumber == 103) {
        NSString *emailAddress = @"email3@domain.com";
        
        MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
        composer.mailComposeDelegate = self;
        
        if ([MFMailComposeViewController canSendMail]) {
            [composer setToRecipients:[NSArray arrayWithObjects:emailAddress, nil]];
            [composer setSubject:@"More info please!"];
            [composer setMessageBody:@"This is the body" isHTML:NO];
            
            [self presentModalViewController:composer animated:YES];
        }
    }
    else if (tagEmailNumber == 104) {
        NSString *emailAddress = @"email4@domain.com";
        
        MFMailComposeViewController *composer = [[MFMailComposeViewController alloc] init];
        composer.mailComposeDelegate = self;
        
        if ([MFMailComposeViewController canSendMail]) {
            [composer setToRecipients:[NSArray arrayWithObjects:emailAddress, nil]];
            [composer setSubject:@"More info please!"];
            [composer setMessageBody:@"This is the body" isHTML:NO];
            
            [self presentModalViewController:composer animated:YES];
        }
    }
}
        
    
- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
        [self dismissModalViewControllerAnimated:YES];
        
        if (result == MFMailComposeResultFailed) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Failed!" message:@"The email failed to send" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
            [alert show];
            [alert release];
        }
}

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
    self.title = @"Meet the team";
    
    NSString *fontName = @"NeoSans-Medium";
    
    [teamName setFont:[UIFont fontWithName:fontName size:24.0]];
    [teamTitle setFont:[UIFont fontWithName:fontName size:15.0]];
    [teamBio setFont:[UIFont fontWithName:fontName size:12.0]];
    [emailLabel setFont:[UIFont fontWithName:fontName size:15.0]];
    
    teamName.text = [NSString stringWithFormat:@"Nick Snelson"];
    teamTitle.text = [NSString stringWithFormat:@"Managing Director"];
    teamBio.text = [NSString stringWithFormat:@"Nick oversees the strategic direction of APS Group as well as the day to day management of each of the key divisions within the group. He maintains direct responsibility for major accounts and for the overall business performance of the company.\n\nAppointed MD in 1992, Nick has overseen the transformation of the business from printing company to the organisation it is today, a company with a clear focus on the provision of print management services and business process outsourcing solutions to major UK customers.\n\nNick has instilled a strong corporate culture within the business.  He has successfully combined a staunchly ethical approach to interfacing with suppliers and stakeholders, with a commitment to environmental responsibility and a stated intent to always operate openly and honestly and in the best interests of customers.\n\nThis innovative approach continues to deliver major benefits for customers, suppliers, employees and the wider community."];
    
    emailLabel.text = [NSString stringWithFormat:@"Send email to nick.snelson@apsgroup.co.uk"];
    teamPortrait.image = [UIImage imageNamed:@"portrait87.png"];
    emailButton.tag = 101;
    
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
