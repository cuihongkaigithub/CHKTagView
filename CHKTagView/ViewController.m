//
//  ViewController.m
//  CHKTagView
//
//  Created by Hongkai Cui on 2017/11/23.
//  Copyright © 2017年 崔洪凯. All rights reserved.
//

#import "ViewController.h"
#import "CHKTagView.h"

@interface ViewController () <CHKTagViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CHKTagView *tag = [[CHKTagView alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, 200) tagNames:@[@"大锅饭见到过积分",@"发放",@"方式发给大范甘迪",@"防守打法",@"阿萨德",@"发斯蒂芬是否",@"防守打法",@"个大范甘迪"] tagItemStyle:[[CHKTagViewItemStyle alloc] initWithType:CHKTagViewItemStyleTypeDefault]];
    
    tag.backgroundColor = [UIColor blueColor];
    tag.delegate = self;
//    tag.canMultiSelect = YES;
    
    [self.view addSubview:tag];
}

- (void)chk_tagView:(CHKTagView *)tagView didSelectItemAtIndex:(NSInteger)index {
    NSLog(@"%ld",index);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
