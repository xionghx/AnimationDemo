//
//  ViewController.m
//  AnimationDemo
//
//  Created by Iracle Zhang on 6/15/16.
//  Copyright © 2016 Iracle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    CALayer *maskLayer;
}

- (void)viewDidLoad {
    
    UIImageView *bgImage = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bgImage.image = [UIImage imageNamed:@"pic"];
    [self.view addSubview:bgImage];
    
    //蒙版
    maskLayer = [CALayer layer];
    maskLayer.bounds = CGRectMake(0, 0, 100, 100);
    maskLayer.position = self.view.center;
    maskLayer.backgroundColor = [UIColor whiteColor].CGColor;
    maskLayer.cornerRadius = 50;
    //盖板
//    [self.view.layer addSublayer:maskLayer];
    //蒙版
    bgImage.layer.mask = maskLayer;
    
    [self performSelector:@selector(maskAnimation) withObject:nil afterDelay:1];

}

- (void)maskAnimation {

    
    //动画事物
    [CATransaction begin];
    [CATransaction setAnimationDuration:2];
    maskLayer.affineTransform = CGAffineTransformMakeScale(10, 10);
    [CATransaction commit];
    
}


@end






