//
//  TwitterMasterView.m
//  APS_Demo
//
//  Created by Rob Randell on 13/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TwitterMasterView.h"
#import "TwitterCell.h"

@interface TwitterMasterView ()

@end

@implementation TwitterMasterView
@synthesize tweets;

- (IBAction)sendTweet:(id)sender {
    
    if ([TWTweetComposeViewController canSendTweet]) {
        
        TWTweetComposeViewController *TweetAPSComposer = [[TWTweetComposeViewController alloc] init];
        [TweetAPSComposer setInitialText:@"@aps_group "];
        [self presentModalViewController:TweetAPSComposer animated:YES];
        
    } else {
            
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert" 
                                                            message:@"Unable to send tweet." 
                                                           delegate:self 
                                                  cancelButtonTitle:@"OK" 
                                                  otherButtonTitles:nil];
        [alertView show];
    }
}
         

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //UIBarButtonItem *tweetButton = [[UIBarButtonItem alloc] initWithTitle:@"Tweet" style:UIBarButtonItemStylePlain target:self action:@selector(sendTweet:)];          
    //self.navigationItem.rightBarButtonItem = tweetButton;
    
    [self fetchTweets];
}

- (void)fetchTweets {
        
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData* data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name=aps_group"]];
        NSError* error;
        
        self.title = @"APS Twitter Feed";
        tweets = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    });
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return tweets.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TweetCell";
    NSString *fontName = @"Neo Sans";
    
    TwitterCell *cell = (TwitterCell *) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSDictionary *tweet = [tweets objectAtIndex:indexPath.row];
    NSString *text = [tweet objectForKey:@"text"];
    NSString *date = [tweet objectForKey:@"created_at"];
    
    cell.tweetText.text = text;
    cell.tweetText.font = [UIFont fontWithName:fontName size:13.0];
    
    cell.user.text = [NSString stringWithFormat:@"posted at: %@", date];
    cell.user.numberOfLines = 2;
    cell.user.font = [UIFont fontWithName:fontName size:11.0];
    
    NSURL *imageURL = [NSURL URLWithString:[[tweet objectForKey:@"user"] objectForKey:@"profile_image_url"]];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    cell.userImage.image = [UIImage imageWithData:imageData];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showTweet"]) {
        
        NSInteger row = [[self tableView].indexPathForSelectedRow row];
        NSDictionary *tweet = [tweets objectAtIndex:row];
        
        TweetDetailViewViewController *detailController = segue.destinationViewController;
        detailController.detailItem = tweet;
        
    }
    
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
