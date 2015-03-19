//
//  ViewController.m
//  0929ZJ倒影
//
//  Created by base on 15/09/19.
//  Copyright © 2015年 base. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CAReplicatorLayer *repLayer =(CAReplicatorLayer *)self.view.layer;
    //要复制几份
    repLayer.instanceCount = 2;
    
    //绕着点旋转180度
    repLayer.instanceTransform = CATransform3DMakeRotation(M_PI, 1, 0, 0);
    
    //倒影
    repLayer.instanceRedOffset -= 0.1;
    repLayer.instanceGreenOffset -= 0.1;
    repLayer.instanceBlueOffset -= 0.1;
    repLayer.instanceAlphaOffset -= 0.1;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
