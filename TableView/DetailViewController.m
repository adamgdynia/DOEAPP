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
    
    NSString *dolphin = [[NSBundle mainBundle] pathForResource:@"cdolphin" ofType:@"pdf" inDirectory:@"CODEBOOKS"];
    NSString *pelican = [[NSBundle mainBundle] pathForResource:@"cpelican" ofType:@"pdf" inDirectory:@"CODEBOOKS"];
    NSString *seachorse = [[NSBundle mainBundle] pathForResource:@"cseachorse" ofType:@"pdf" inDirectory:@"CODEBOOKS"];
    NSString *seal = [[NSBundle mainBundle] pathForResource:@"cseal" ofType:@"pdf" inDirectory:@"CODEBOOKS"];
    NSString *stork = [[NSBundle mainBundle] pathForResource:@"cstork" ofType:@"pdf" inDirectory:@"CODEBOOKS"];
    NSString *swan = [[NSBundle mainBundle] pathForResource:@"cswan" ofType:@"pdf" inDirectory:@"CODEBOOKS"];
    
    NSString *pelican_leaflet = [[NSBundle mainBundle] pathForResource:@"DOE_PELICAN" ofType:@"pdf" inDirectory:@"LEAFLETS"];
    NSString *seal_leaflet = [[NSBundle mainBundle] pathForResource:@"DOE_SEAL" ofType:@"pdf" inDirectory:@"LEAFLETS"];
    NSString *seahorse_leaflet = [[NSBundle mainBundle] pathForResource:@"DOE_SEAHORSE" ofType:@"pdf" inDirectory:@"LEAFLETS"];
    NSString *doe_product = [[NSBundle mainBundle] pathForResource:@"DOE_PRODUCT_INDEX" ofType:@"pdf" inDirectory:@"LEAFLETS"];
    NSString *swan_leaflet = [[NSBundle mainBundle] pathForResource:@"DOE_SWAN" ofType:@"pdf" inDirectory:@"LEAFLETS"];

    
    //Set the title of the View
    self.title = charakterName;
    [characterImage setScalesPageToFit:YES];
    
    //Switch set UIImageView based of the main view
    switch (characterNumber) {
        case 0:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:dolphin]]];
            break;
        case 1:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:pelican]]];
            break;
        case 2:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:seachorse]]];
            break;
        case 3:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:seal]]];
            break;
        case 4:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:stork]]];
            break;
        case 5:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:swan]]];
            break;
        case 6:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:pelican_leaflet]]];
            break;
        case 7:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:seal_leaflet]]];
            break;
        case 8:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:seahorse_leaflet]]];
            break;
        case 9:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:swan_leaflet]]];
            break;
        case 10:
            [self.characterImage loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:doe_product]]];
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
