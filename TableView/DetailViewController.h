//
//  DetailViewController.h
//  TableView
//
//  Created by Adam Kasprzak on 17.12.2012.
//  Copyright (c) 2012 Adam Kasprzak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property int characterNumber;

@property (strong,nonatomic) NSString *charakterName;

@property (weak, nonatomic) IBOutlet UIWebView *characterImage;

@end
