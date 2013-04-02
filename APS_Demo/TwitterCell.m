//
//  TwitterCell.m
//  APS_Demo
//
//  Created by Rob Randell on 14/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TwitterCell.h"

@implementation TwitterCell
@synthesize user, tweetText, userImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
