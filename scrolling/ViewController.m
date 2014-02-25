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

    // Main UIScroll view (Vertical)
    self.scroller.scrollEnabled=YES;
    self.scroller.contentSize=CGSizeMake(320, 3000);

    // Loop adding UI controls
    for (int i=15; i<190; i=i+15) {
        UILabel *msg=[[UILabel alloc]initWithFrame:CGRectMake(20, i, 50, 50)];
        msg.text=[NSString stringWithFormat:@"%d",i];
        msg.textAlignment=NSTextAlignmentRight;
        [self.scroller addSubview:msg];
    }
    
    
    // UIImageView apos y=300
    UIScrollView *horizontalScroll=[[UIScrollView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height/2, 320, 160)];
    
    horizontalScroll.scrollEnabled=YES;
    horizontalScroll.contentSize=CGSizeMake(3200, 80);
    horizontalScroll.backgroundColor=[UIColor yellowColor];
    [self.scroller addSubview:horizontalScroll];
    
    // Add content to horizontal scroll view
    
    
    
    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
