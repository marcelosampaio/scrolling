//
//  ViewController.m
//  scrolling
//
//  Created by Marcelo Sampaio on 1/2/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize scroller;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    self.scroller.scrollEnabled=YES;
    self.scroller.contentSize=CGSizeMake(320, 3000);
    // Loop para injetar varios labels para ocupar a altura de 3000
    
    for (int i=15; i<3000; i=i+15) {
        NSLog(@"%d",i);
        UILabel *msg=[[UILabel alloc]initWithFrame:CGRectMake(80, i, 100, 20)];
        msg.text=[NSString stringWithFormat:@"%d",i];
        [self.scroller addSubview:msg];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
