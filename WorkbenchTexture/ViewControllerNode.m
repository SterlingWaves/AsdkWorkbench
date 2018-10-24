//
//  ViewControllerNode.m
//  WorkbenchTexture
//
//  Created by Sterling Li on 10/24/18.
//  Copyright © 2018 PInterest. All rights reserved.
//

#import "ViewControllerNode.h"
#import <AsyncDisplayKit/AsyncDisplayKit.h>
#import "TabViewController1.h"
#import "TabViewController2.h"

@interface ViewControllerNode()<ASPagerDataSource, ASPagerDelegate>

@property (nonatomic, strong) ASScrollNode *scrollNode;
@property (nonatomic, strong) ASPagerNode *pagerNode;
@property (nonatomic, strong) NSArray *pagedViewControllers;
@end

@implementation ViewControllerNode

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.automaticallyManagesSubnodes = YES;
        
        _pagerNode = [[ASPagerNode alloc] init];
        _pagerNode.delegate = self;
        _pagerNode.dataSource = self;
        _pagerNode.allowsAutomaticInsetsAdjustment = YES;
        
        _scrollNode = [[ASScrollNode alloc] init];
//        [_scrollNode addSubnode:_pagerNode];

        TabViewController1 *vc1 = [[TabViewController1 alloc] init];
        vc1.view.backgroundColor = [UIColor yellowColor];
        TabViewController2 *vc2 = [[TabViewController2 alloc] init];
        vc2.view.backgroundColor = [UIColor cyanColor];
        _pagedViewControllers = @[vc1, vc2];
    }
    return self;
}

- (NSInteger)numberOfPagesInPagerNode:(nonnull ASPagerNode *)pagerNode {
    return 2;
}

- (ASCellNodeBlock)pagerNode:(ASPagerNode *)pagerNode nodeBlockAtIndex:(NSInteger)index
{
    ASViewController *sectionViewController = [self.pagedViewControllers objectAtIndex:index];
    
    return (ASCellNodeBlock) ^ {
        return [[ASCellNode alloc] initWithViewControllerBlock:^UIViewController *_Nonnull {
            return sectionViewController;
        }
                                                  didLoadBlock:nil];
    };

}

- (void)lock {
    
}

- (void)unlock {
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize
{
    self.scrollNode.style.preferredSize = constrainedSize.max;
    self.pagerNode.style.preferredSize = constrainedSize.max;
    return [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsZero child:self.pagerNode];
}

@end
