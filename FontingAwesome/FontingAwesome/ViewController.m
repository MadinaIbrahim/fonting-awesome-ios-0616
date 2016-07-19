//
//  ViewController.m
//  FontingAwesome
//
//  Created by Madina Ibrahim on 7/19/16.
//  Copyright © 2016 Madina Ibrahim. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *awesomeButton;
@property (strong, nonatomic) CWStatusBarNotification *notification;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    FAKFontAwesome.printIconWithSize(30).attributedString() --> this is swifty!
    NSAttributedString *attributedString = [[FAKFontAwesome printIconWithSize:70] attributedString];// we creating an instance of the class FAKFontAwesome
    [self.awesomeButton setAttributedTitle:attributedString forState:UIControlStateNormal];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)awesomeButtonTapped:(id)sender {
    FAKFontAwesome *newIcon = [FAKFontAwesome starIconWithSize:70];
    [self.awesomeButton setAttributedTitle:newIcon.attributedString forState:UIControlStateNormal];
    
    
    
    self.notification = [CWStatusBarNotification new];
    self.notification.notificationStyle = CWNotificationStyleNavigationBarNotification; // make notification BIG
    self.notification.notificationLabelBackgroundColor = [UIColor redColor];
    
    [self.notification displayNotificationWithMessage:[NSString stringWithFormat:@"Madina comming! %@!", @"instructors RUN!"] forDuration:1.0f];
}



@end
