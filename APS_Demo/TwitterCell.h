//
//  TwitterCell.h
//  APS_Demo
//
//  Created by Rob Randell on 14/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwitterCell : UITableViewCell

@property (nonatomic, retain) IBOutlet UIImageView *userImage;
@property (nonatomic, retain) IBOutlet UITextView *tweetText;
@property (nonatomic, retain) IBOutlet UILabel *user;

@end
