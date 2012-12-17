//
//  ConnectViewController.m
//  TableView
//
//  Created by Adam Kasprzak on 17.12.2012.
//  Copyright (c) 2012 Adam Kasprzak. All rights reserved.
//

#import "ConnectViewController.h"

@interface ConnectViewController ()

@end

@implementation ConnectViewController
@synthesize mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.mapView.delegate = self;
}


- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    
    CLLocationCoordinate2D gdynia;
    gdynia.latitude = 54.54783;
    gdynia.longitude = 18.43126;
    
    CLLocationCoordinate2D centrum;
    centrum.latitude = 51.20688;
    centrum.longitude = 10.85449;
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(centrum, 2000000, 2000000);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = gdynia;
    point.title = @"DOE OFFICE";
    point.subtitle = @"POLAND, GDYNIA";
    
    [self.mapView addAnnotation:point];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
