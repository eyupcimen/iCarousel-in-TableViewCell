//
//  TableViewView.h
//  iCarousel
//
//  Created by eyupcimen on 28/01/2017.
//  Copyright © 2017 eyupcimen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableiViewCell.h"
#import "TableViewCellOther.h"


@protocol TableViewInCelliCarousel <NSObject>
-(void)didSelectProtocolView:(int)index ;
@end

@interface TableViewView : UIView <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,weak) id <TableViewInCelliCarousel> delegate ;
@property (weak, nonatomic) IBOutlet UITableView *tableViewMy;
@property (nonatomic,strong) NSArray *array ;

@property (nonatomic,strong) NSArray *numberImages ;

- ( void )reloadData:( NSArray * )array;


@end
