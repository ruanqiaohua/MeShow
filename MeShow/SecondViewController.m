//
//  SecondViewController.m
//  MeShow
//
//  Created by ruanqiaohua on 16/9/8.
//  Copyright © 2016年 ruanqiaohua. All rights reserved.
//

#import "SecondViewController.h"
#import <PLPlayerKit/PLPlayerKit.h>

@interface SecondViewController ()<PLPlayerDelegate>
@property (nonatomic, strong) PLPlayer *player;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PLPlayerOption *option = [PLPlayerOption defaultOption];
    [option setOptionValue:@15 forKey:PLPlayerOptionKeyTimeoutIntervalForMediaPackets];
    NSURL *url = [NSURL URLWithString:@"rtmp://pili-publish.pilitest.qiniucdn.com/pilitest/demo_test?key=6eeee8a82246636e"];
    self.player = [PLPlayer playerWithURL:url option:option];
    [self.view addSubview:self.player.playerView];
    self.player.delegate = self;
    [self.player play];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
