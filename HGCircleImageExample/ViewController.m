//
//  ViewController.m
//  HGCircleImageExample
//
//  Created by hooge on 15-8-3.
//  Copyright (c) 2015年 hoowang. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+HGCircleImage.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *originalImageView;
@property (weak, nonatomic) IBOutlet UIImageView *circleImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.originalImageView.image = [UIImage imageNamed:@"canna"];
    UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"canna"]];
    imageView.layer.masksToBounds = YES;
    imageView.layer.cornerRadius = imageView.frame.size.width * 0.5;
}



- (IBAction)generateCircleImage:(id)sender {
    self.circleImageView.image = [self.originalImageView.image circleImage];
}

@end
