//
//  ViewController.m
//  TestApp
//
//  Created by SDT-1 on 2014. 1. 2..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int i;
}

@property NSArray *arr;
@property UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIButton *left;
@property (weak, nonatomic) IBOutlet UIButton *Right;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    i=0;
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"ball1"ofType:@"jpeg"];
    UIImage *ball1Img = [UIImage imageWithContentsOfFile:filePath];
    NSString *filePath2 = [[NSBundle mainBundle] pathForResource:@"ball2"ofType:@"jpeg"];
    UIImage *ball2Img = [UIImage imageWithContentsOfFile:filePath2];
    NSString *filePath3 = [[NSBundle mainBundle] pathForResource:@"ball3"ofType:@"jpeg"];
    UIImage *ball3Img = [UIImage imageWithContentsOfFile:filePath3];
    
    self.imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(185, 50, 200, 200)];
    

    self.arr = [[NSArray alloc]initWithObjects:ball1Img, ball2Img, ball3Img, nil];
    
    
    self.left.enabled = NO;
    self.imageView1.image=self.arr[i];
    [self.view addSubview:self.imageView1];

	// Do any additional setup after loading the view, typically from a nib.

    
}



- (IBAction)button1:(id)sender {
    
    i--;
    self.imageView1.image = self.arr[i];
    [self.view addSubview:self.imageView1];
  
    if(i==0)
    {

        self.left.enabled = NO;
    }
    else
    {
        self.Right.enabled = YES;
    }
    
    
}
- (IBAction)button2:(id)sender {
    i++;
    
    self.imageView1.image = self.arr[i];
    [self.view addSubview:self.imageView1];
    if(i==2)
    {
        self.Right.enabled = NO;
        
    }
    else
    {
        self.left.enabled = YES;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
