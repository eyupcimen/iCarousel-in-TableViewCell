//
//  TableViewController.h
//  iCarousel
//
//  Created by eyupcimen on 28/01/2017.
//  Copyright © 2017 eyupcimen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewView.h"

@interface TableViewController : UIViewController <TableViewInCelliCarousel>


@property (strong, nonatomic) IBOutlet TableViewView *tableViewView;


@end
