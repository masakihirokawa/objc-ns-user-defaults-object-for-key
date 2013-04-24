//
//  ViewController.m
//  NSUserDefaultsObjectForKeySample
//
//  Created by Dolice on 2013/04/24.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //ユーザーデフォルトを取得する
  NSUserDefaults *userDefaults;
  userDefaults = [NSUserDefaults standardUserDefaults];
  
  //設定値を保存する
  [userDefaults setInteger:6
                    forKey:@"myValue"];
  
  //設定値を取得する
  NSNumber *value;
  value = [userDefaults objectForKey:@"myValue"];
  
  NSLog(@"%@", value);
}

@end
