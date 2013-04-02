//
//  MeetTeam.h
//  APS_Demo
//
//  Created by Rob Randell on 28/05/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface MeetTeam : UIViewController <MFMailComposeViewControllerDelegate, UINavigationControllerDelegate>

- (IBAction)teamButton:(UIButton *)sender;
- (IBAction)emailButton:(UIButton *)sender;

@property (nonatomic, retain) IBOutlet UIButton *teamButton;
@property (nonatomic, retain) IBOutlet UIButton *emailButton;

@property (nonatomic, retain) IBOutlet UIImageView *teamPortrait;
@property (nonatomic, retain) IBOutlet UILabel *teamName;
@property (nonatomic, retain) IBOutlet UILabel *teamTitle;
@property (nonatomic, retain) IBOutlet UILabel *emailLabel;
@property (nonatomic, retain) IBOutlet UITextView *teamBio;

@end
