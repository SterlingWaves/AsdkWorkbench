//
//  TabViewController1.m
//  WorkbenchTexture
//
//  Created by Sterling Li on 10/24/18.
//  Copyright © 2018 PInterest. All rights reserved.
//

#import "TabViewController1.h"

@interface TabViewController1 ()

@end

@implementation TabViewController1

- (instancetype)init {
    return [super initWithNode:[[ASDisplayNode alloc] init]];
}

- (void)dealloc {
    NSLog(@"--- tab view controller 1 dealloc.... ----");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"--- tab view controller 1 viewDidLoad.... ----");

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
