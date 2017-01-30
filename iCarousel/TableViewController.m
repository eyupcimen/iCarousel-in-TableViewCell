//
//  TableViewController.m
//  iCarousel
//
//  Created by eyupcimen on 28/01/2017.
//  Copyright © 2017 eyupcimen. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableViewView.delegate = self ;
    [self.tableViewView reloadData:@[ @"01",@"03",@"04",@"05",@"06",@"07",@"08",@"09",@"10" ] ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


-(void)didSelectProtocolView:(int)index {
    NSLog(@" %li did select protocol metodu tetiklendi  " , index ) ;
}

@end
