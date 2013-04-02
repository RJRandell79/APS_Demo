//
//  NLMapView.h
//  APS_Demo
//
//  Created by Rob Randell on 12/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface NLMapView : UIViewController <MKMapViewDelegate> {
    
    MKMapView *mapViewNL;
    
}

@property (nonatomic, retain) IBOutlet MKMapView *mapViewNL;
@property (nonatomic, retain) IBOutlet UITextView *nlTextView;

@end
