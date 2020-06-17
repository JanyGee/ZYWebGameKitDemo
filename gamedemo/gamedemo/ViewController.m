//
//  ViewController.m
//  gamedemo
//
//  Created by JanyGee on 2020/6/16.
//  Copyright © 2020 Octopus. All rights reserved.
//

#import "ViewController.h"
#import <ZYWebGameKit/ZYWebGameKit-Swift.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

//登录
- (IBAction)login:(id)sender {
    
     [ZYWebGameKit loginOrLogoutWithLoginSuccess:^(NSString * _Nonnull userId, NSString * _Nonnull token) {
         self.stateLabel.text = [NSString stringWithFormat:@"用户ID：%@----token：%@",userId,token];
     } loginFail:^{
         self.stateLabel.text = @"登录失败";
     } logoutSuccess:^{
         self.stateLabel.text = @"退出成功";
     } logoutFail:^{
         self.stateLabel.text = @"退出失败";
     }];
}
//登出
- (IBAction)loginout:(id)sender {
    [ZYWebGameKit logoutWithSuccess:^{
        self.stateLabel.text = @"退出成功";
    } fail:^{
        self.stateLabel.text = @"退出失败";
    }];
}

//绑定
- (IBAction)bind:(id)sender {
    [ZYWebGameKit bindWithGameZoneId:@"1" gameZoneName:@"11" guildName:@"22" roleId:@"22" level:@"1" roleName:@"2ddaa" vipLevel:@"2" success:^{
        self.stateLabel.text = @"绑定成功";
    } fail:^{
        self.stateLabel.text = @"绑定失败";
    }];
}

//提交角色信息
- (IBAction)submit:(id)sender {
    //1: 进入游戏   2: 创建角色    3: 角色升级     4: 退出游戏
    [ZYWebGameKit submitWithGameZoneId:@"1" gameZoneName:@"11" guildName:@"22" roleBalance:@"33" roleId:@"1" level:@"3" roleName:@"2" vipLevel:@"33" submitType:@"1" success:^{
        self.stateLabel.text = @"提交角色信息成功";
    } fail:^{
        self.stateLabel.text = @"提交角色信息失败";
    }];
}

//购买
- (IBAction)shop:(id)sender {
    
//    dispatch_queue_t queue = dispatch_queue_create(NULL, DISPATCH_QUEUE_CONCURRENT);
//
//    for (int i = 0; i < 2; i ++) {
//        dispatch_async(queue, ^{
//            [ZYWebGameKit shopWithGoodsPrice:@"648" productId:@"1393" gameOrderId:[NSString stringWithFormat:@"%d", arc4random() % 100000000] gameZoneId:@"1" roleId:@"1" level:@"2" notifyUrl:@"https://blog.csdn.net/yyacheng/article/details/51691444" roleName:@"jany" cpPrivateInfo:@"sddaaddd" success:^{
//                self.stateLabel.text = @"购买成功";
//            } fail:^{
//                self.stateLabel.text = @"购买失败";
//            }];
//        });
//    }

    [ZYWebGameKit shopWithGoodsPrice:@"6" productId:@"1877" gameOrderId:[NSString stringWithFormat:@"%d", arc4random() % 100000000] gameZoneId:@"13998" roleId:@"1" level:@"2" notifyUrl:@"https://blog.csdn.net/yyacheng/article/details/51691444" roleName:@"jany" cpPrivateInfo:@"" success:^{
        self.stateLabel.text = @"购买成功";
    } fail:^{
        self.stateLabel.text = @"购买失败";
    }];
}

//显示悬浮按钮
- (IBAction)showfloatview:(id)sender {
    [ZYWebGameKit show];
}

//隐藏悬浮按钮
- (IBAction)hidden:(id)sender {
    [ZYWebGameKit hidden];
}

- (void)switchAccount{
    self.stateLabel.text = @"退出成功";
}
@end
