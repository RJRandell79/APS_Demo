//
//  TwitterMasterView.h
//  APS_Demo
//
//  Created by Rob Randell on 13/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>

@interface TwitterMasterView : UITableViewController {

    NSArray *tweets;
    
}

@property (nonatomic, strong) NSArray *tweets;

- (void)fetchTweets;
- (IBAction)sendTweet:(id)sender;

@end
