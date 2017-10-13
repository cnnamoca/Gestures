//
//  RotateViewController.m
//  Gestures
//
//  Created by Carlo Namoca on 2017-10-12.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "RotateViewController.h"

@interface RotateViewController ()

@end

@implementation RotateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];
    
    UIRotationGestureRecognizer *rotateGesture = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(viewRotated:)];
    
    [view addGestureRecognizer:rotateGesture];
}

-(void) viewRotated: (UIRotationGestureRecognizer *)sender
{
    CGAffineTransform transform  = CGAffineTransformRotate(sender.view.transform, sender.rotation);
    sender.view.transform = transform;
    sender.rotation = 0;
}


@end
