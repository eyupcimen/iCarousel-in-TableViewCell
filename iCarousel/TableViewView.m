//
//  TableViewView.m
//  iCarousel
//
//  Created by eyupcimen on 28/01/2017.
//  Copyright © 2017 eyupcimen. All rights reserved.
//

#import "TableViewView.h"


@implementation TableViewView

-(void)awakeFromNib {
    [super awakeFromNib];
    
    self.tableViewMy.delegate = self ;
    self.tableViewMy.dataSource = self ;
    self.numberImages = @[ @"01",@"02",@"03",@"04",@"05",@"06",@"07",@"08" ,@"09" ,@"10" ] ;
    [self reloadData:self.numberImages];
    [self addSubview:self.tableViewMy];
}



-(void)reloadData:(NSArray *)array {
    _array = array ;
    [self.tableViewMy reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (_array.count) {
        return _array.count + 1    ;
    } else {
        return 1;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0 ) {
        TableiViewCell *cell = [self.tableViewMy dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        cell.delegateDidSelect = self ;
        return cell ;
    } else {
        TableViewCellOther *cell2 = [self.tableViewMy dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
        cell2.imageViewCellOther.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", _array[indexPath.row - 1] ]];
        cell2.imageViewCellOther.contentMode = UIViewContentModeScaleAspectFill ;
        cell2.labelCellOther.text = [NSString stringWithFormat:@"%@", _array[indexPath.row - 1]];
        
        return cell2;
    }
    return nil ;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0 ) {
        return 227 ;
    } else {
        return 182 ;
    }
}

-(void)didSelectProtocol:(int)index {
    [_delegate didSelectProtocolView:index ] ;
}



@end
