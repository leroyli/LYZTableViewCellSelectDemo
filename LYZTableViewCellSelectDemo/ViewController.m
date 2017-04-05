//
//  ViewController.m
//  LYZTableViewCellSelectDemo
//
//  Created by artios on 2017/4/5.
//  Copyright © 2017年 artios. All rights reserved.
//

#import "ViewController.h"
#import "SingleSelectViewController.h"
#import "MoreSelectViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupViews];
}

- (void)setupViews{
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"main";
    
    UIButton *singleButton = [self setupButtonWithFrame:CGRectMake(200, 200, 150, 50)
                                                  title:@"single select"
                                        backgroundColor:[UIColor redColor]
                                             titleColor:[UIColor whiteColor]];
    [singleButton addTarget:self
                     action:@selector(singleSelectAction:)
           forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *moreButton   = [self setupButtonWithFrame:CGRectMake(200, 300, 150, 50)
                                                  title:@"more select"
                                        backgroundColor:[UIColor redColor]
                                             titleColor:[UIColor whiteColor]];
    [moreButton addTarget:self
                   action:@selector(moreSelectAction:)
         forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:singleButton];
    [self.view addSubview:moreButton];
    
}

- (void)singleSelectAction:(UIButton *)sender{
    SingleSelectViewController *singleVC = [[SingleSelectViewController alloc] init];
    [self.navigationController pushViewController:singleVC animated:YES];
}

- (void)moreSelectAction:(UIButton *)sender{
    MoreSelectViewController *moreVC = [[MoreSelectViewController alloc] init];
    [self.navigationController pushViewController:moreVC animated:YES];
}



- (UIButton *)setupButtonWithFrame:(CGRect)frame
                             title:(NSString *)title
                   backgroundColor:(UIColor *)backgroundColor
                        titleColor:(UIColor *)titleColor
{
    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    itemButton.frame = frame;
    itemButton.backgroundColor = backgroundColor;
    [itemButton setTitle:title forState:UIControlStateNormal];
    [itemButton setTitleColor:titleColor forState:UIControlStateNormal];
    itemButton.layer.cornerRadius = 4.0f;
    itemButton.layer.masksToBounds = YES;
    return itemButton;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
