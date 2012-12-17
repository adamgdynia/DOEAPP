//
//  DetailViewController.m
//  TableView
//
//  Created by Adam Kasprzak on 17.12.2012.
//  Copyright (c) 2012 Adam Kasprzak. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize characterImage, characterNumber, charakterName;

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
	// Do any additional setup after loading the view.
    
    //Create UI ImageObjects
    
    UIImage * pelicanImage = [UIImage imageNamed:@"PELICAN_ipad.png"];
    UIImage * storkImage = [UIImage imageNamed:@"STORK_ipad.png"];
    UIImage * seahorseImage = [UIImage imageNamed:@"SEAHORSE_ipad.png"];
    
    //Set the title of the View
    self.title = charakterName;
    
    //Switch set UIImageView based of the main view
    switch (characterNumber) {
        case 0:
            characterImage.image = storkImage;
            break;
        case 1:
            characterImage.image = pelicanImage;
            break;
        case 2:
            characterImage.image = seahorseImage;
            break;
            
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
