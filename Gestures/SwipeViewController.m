//
//  SwipeViewController.m
//  Gestures
//
//  Created by Carlo Namoca on 2017-10-12.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@property (nonatomic) BOOL x;

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    CGFloat width = 360;
    CGFloat height = 50;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    
    UIView *under = [[UIView alloc]initWithFrame:frame];
    under.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:under];
    
    CGFloat width2 = 360;
    CGFloat height2 = 50;
    CGRect frame2 = CGRectMake(CGRectGetMidX(under.bounds) - width2/2, CGRectGetMidY(under.bounds) - height2/2, width, height);
    
    UIView *over = [[UIView alloc]initWithFrame:frame2];
    over.backgroundColor = [UIColor whiteColor];
    [under addSubview:over];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(viewSwiped:)];
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [over addGestureRecognizer:swipeLeft];

    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(viewSwiped:)];
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [over addGestureRecognizer:swipeRight];


}

-(void) viewSwiped: (UISwipeGestureRecognizer *)sender
{
    
    switch (sender.direction){
        case UISwipeGestureRecognizerDirectionRight:
            sender.view.center = CGPointMake(sender.view.center.x +100, sender.view.center.y);
            break;
        case UISwipeGestureRecognizerDirectionLeft:
            sender.view.center = CGPointMake(sender.view.center.x -1, sender.view.center.y);
            break;
        case UISwipeGestureRecognizerDirectionUp:
            nil;
            break;
        case UISwipeGestureRecognizerDirectionDown:
            nil;
            break;
    }
    
    
    
}



@end
