//
//  ViewController.m
//  MYKitDemo
//
//  Created by sunjinshuai on 2017/9/6.
//  Copyright © 2017年 com.51fanxing. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+CornerRadius.h"
#import "UIImage+Color.h"
#import "UIImageView+CornerRadius.h"
#import "XXObject.h"
#import "UIView+RedDot.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, strong) NSArray *arrayI;
@property (nonatomic, strong) NSMutableArray *arrayM;
@property (nonatomic, strong) NSArray *array0;
@property (nonatomic, strong) NSArray *singleObjectArrayI;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.imageView.image = [self.imageView.image circleImage];
    
//    XXObject *object1 = [[XXObject alloc] init];
    
    UIView *yellowView = [[UIView alloc] init];
    yellowView.backgroundColor = [UIColor yellowColor];
    yellowView.frame = CGRectMake(100, 300, 50, 100);
    [yellowView addRedDotWithRadius:5 offsetX:0 offsetY:0];
    [yellowView showRedDot];

    [self.view addSubview:yellowView];
    
    /*
     * init array
     */
    self.arrayI = @[@"a", @"b", @"c", @"d"];
    
    self.arrayM = [self.arrayI mutableCopy];
    
    self.array0 = @[];
    
    self.singleObjectArrayI = @[@"a"];
    
    
    /*
     * overflow !
     */
    NSLog(@"self.array[5]: %@",self.arrayI[4]);
    NSLog(@"[self.array objectAtIndex:4]: %@",[self.arrayI objectAtIndex:4]);
    
    NSLog(@"[self.mArray objectAtIndex:5]: %@",self.arrayM[5]);
    NSLog(@"[self.mArray objectAtIndex:5]: %@",[self.arrayM objectAtIndex:5]);
    
    NSLog(@"self.emptyArray[5]: %@",self.array0[4]);
    NSLog(@"[self.emptyArray objectAtIndex:4]: %@",[self.array0 objectAtIndex:4]);
    
    NSLog(@"self.signalArray[5]: %@",self.singleObjectArrayI[4]);
    NSLog(@"[self.signalArray objectAtIndex:4]: %@",[self.singleObjectArrayI objectAtIndex:4]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
