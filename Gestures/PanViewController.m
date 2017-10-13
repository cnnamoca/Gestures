//
//  PanViewController.m
//  Gestures
//
//  Created by Carlo Namoca on 2017-10-12.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController
- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
//    CGPoint locationInView = [sender locationInView: self.view];
//    sender.view.center = locationInView;
    //does same thing as earlier but with translation in view we gete access to other properties such as velocity.
    CGPoint translationInView = [sender translationInView: self.view];
    //center of square
    CGPoint oldCenter = sender.view.center;
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    sender.view.center = newCenter;
    [sender setTranslation:CGPointZero inView:self.view];
}


@end
