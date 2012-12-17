//
//  ConnectViewController.h
//  TableView
//
//  Created by Adam Kasprzak on 17.12.2012.
//  Copyright (c) 2012 Adam Kasprzak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ConnectViewController : UIViewController <MKMapViewDelegate>
@property (nonatomic, strong) IBOutlet MKMapView *mapView;
@end
