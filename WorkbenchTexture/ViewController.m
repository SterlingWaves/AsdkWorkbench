//
//  ViewController.m
//  WorkbenchTexture
//
//  Created by Sterling Li on 10/24/18.
//  Copyright © 2018 PInterest. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerNode.h"

@interface ViewController ()

@end



@implementation ViewController

- (instancetype)init
{
    ViewControllerNode *node = [[ViewControllerNode alloc] init];
    return [super initWithNode:node];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
