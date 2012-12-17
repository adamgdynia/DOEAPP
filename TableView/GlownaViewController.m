//
//  GlownaViewController.m
//  TableView
//
//  Created by Adam Kasprzak on 17.12.2012.
//  Copyright (c) 2012 Adam Kasprzak. All rights reserved.
//

#import "GlownaViewController.h"

@interface GlownaViewController ()

@end

@implementation GlownaViewController
@synthesize stronaglowna;

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
    

    NSURL *url = [NSURL URLWithString:@"http://www.doe.pl/water.html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [stronaglowna loadRequest: request];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
