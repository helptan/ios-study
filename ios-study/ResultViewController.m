//
//  ResultViewController.m
//  ios-study
//
//  Created by helptan on 2015/06/19.
//  Copyright (c) 2015年 helptan. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = [self fukuwarai];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)fukuwarai {
    NSString *face;
    int result = arc4random() % 4;
    
    switch (result) {
        case 0:
            face = @"(ー_ー;)";
            break;
        case 1:
            face = @"(^^)/";
            break;
        case 2:
            face = @"－y( ´Д｀)｡oO○";
            break;
        case 3:
            face = @"(@_@。";
            break;
        default:
            break;
    }
    
    return face;
}

@end
