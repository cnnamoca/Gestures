//
//  EdgePanViewController.m
//  Gestures
//
//  Created by Carlo Namoca on 2017-10-12.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "EdgePanViewController.h"

@interface EdgePanViewController ()

@end

@implementation EdgePanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 300;
    CGFloat height = 300;
    CGRect frame = (CGRectMake(self.view.bounds.size.width - 20, CGRectGetMidY(self.view.bounds) - height/2, width, height));
    
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    UIScreenEdgePanGestureRecognizer *edgePanRecognizer = [[UIScreenEdgePanGestureRecognizer alloc]initWithTarget:self action:@selector(viewEdgeSwiped:)];
    edgePanRecognizer.edges = UIRectEdgeRight;
    
    [view addGestureRecognizer:edgePanRecognizer];
    
}

-(void) viewEdgeSwiped: (UIScreenEdgePanGestureRecognizer *)sender
{
    CGPoint translationInView = [sender translationInView: self.view];
    CGPoint oldCenter = sender.view.center;
    
    CGRect besideScreen = (CGRectMake(self.view.bounds.size.width -300, CGRectGetMidY(self.view.bounds) - 150, 300, 300));
    
    if (sender.state == UIGestureRecognizerStateChanged){
        CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y);
        sender.view.center = newCenter;
        [sender setTranslation:CGPointZero inView: self.view];
    } else if (sender.state == UIGestureRecognizerStateEnded && oldCenter.x < self.view.center.x){
        sender.view.frame = besideScreen;
    } else {
        sender.view.frame = CGRectMake(self.view.bounds.size.width - 20, CGRectGetMidY(self.view.bounds) - 150, 300, 300);
    }
    
}
@end
