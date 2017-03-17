//
//  FrameworkViewController.m
//  Framework
//
//  Created by 王易平 on 2017/3/17.
//  Copyright © 2017年 LeTV Public Components Group. All rights reserved.
//

#import "FrameworkViewController.h"
#import <AFNetworking/AFNetworking.h>

@interface FrameworkViewController ()

@end

@implementation FrameworkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString* bundleImageName = [NSString stringWithFormat: @"Framework.bundle/%@", @"somepic"];
    UIImage *image = [UIImage imageNamed:bundleImageName];

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
    imageView.image = image;

    [self.view addSubview:imageView];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"Framework.bundle" ofType:nil];
    NSBundle *resourceBundle = [NSBundle bundleWithPath:path];
    NSString *text = NSLocalizedStringFromTableInBundle(@"Hello Framework", nil, resourceBundle, @"Hello Framework");

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 120, 200, 20)];
    label.text = text;

    self.view.backgroundColor = [UIColor whiteColor];

    [self.view addSubview:label];

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    [manager GET:@"https://api.github.com/" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"Request Success");
        NSLog(@"%@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"Request Failed");
        NSLog(@"%@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
