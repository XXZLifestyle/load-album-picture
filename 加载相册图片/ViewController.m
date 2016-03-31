//
//  ViewController.m
//  加载相册图片
//
//  Created by Zachary on 15/10/9.
//  Copyright © 2015年 www.xxzd.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self updateImageWithImageCount:0 imageArray:nil imageURLArray:nil isNet:0 superView:self.view];
}

- (void)updateImageWithImageCount:(NSInteger)num imageArray:(NSMutableArray *)imageArr imageURLArray:(NSMutableArray *)imageURLArr isNet:(NSInteger)integer  superView:(UIView *)view{
    Return(num, 0)
    //    num = imageArr.count;
//    num = imageURLArr.count;
    
    num = 6;
    
    CGFloat width = 70*RATIO_WIDTH;
    CGFloat distance_x = 10*RATIO_WIDTH;
    
    if (num == 0) {
        UIButton *imgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        imgBtn.frame = CGRectMake(distance_x, distance_x, width, width);
        imgBtn.backgroundColor = [UIColor redColor];
        imgBtn.tag = 1000+num;
        [view addSubview:imgBtn];
        
        [imgBtn addTarget:self action:@selector(imgBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    } else if (num < 4) {
        CGFloat internal = (SCREEN_WIDTH-width*4)/5;
        
        for (int i = 0; i < (num+1); i++) {
            UIButton *imgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            imgBtn.frame = CGRectMake(internal+(width+internal)*i, distance_x, width, width);
            imgBtn.backgroundColor = [UIColor cyanColor];
            imgBtn.tag = 1000+i;
            [view addSubview:imgBtn];
            
            if (i == num) {
                imgBtn.backgroundColor = [UIColor redColor];
            }
            
            [imgBtn addTarget:self action:@selector(imgBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        }
    } else if (num < 9) {
        CGFloat internal = (SCREEN_WIDTH-width*4)/5;
        
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 4; j++) {
                
                NSInteger temp = i*(num+1)+j;
              
                
                if (i == 1 && (j>num-4)) {
                    return;
                }
                  XXZLog(@"temp = %ld", temp);
                
                UIButton *imgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
                imgBtn.frame = CGRectMake(internal+(width+internal)*j, distance_x+(width+distance_x)*i, width, width);
                imgBtn.backgroundColor = [UIColor cyanColor];
                imgBtn.tag = 1000+temp;
                [view addSubview:imgBtn];
                
                if (i == 1 && (j == num-4)) {
                    imgBtn.backgroundColor = [UIColor redColor];
                }
                
                [imgBtn addTarget:self action:@selector(imgBtnAction:) forControlEvents:UIControlEventTouchUpInside];

                
            }
        }
    }
    
}

- (void)imgBtnAction:(UIButton *)btn {
    XXZLog(@"btn.tag = %ld", btn.tag)
    
}

#pragma mark -
- (void)buildLayout {
    
}

#pragma mark -
#pragma mark - action


#pragma mark - getter


#pragma mark - other


#pragma mark - dealloc
- (void)dealloc {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
