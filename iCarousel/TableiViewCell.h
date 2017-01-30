//
//  TableiViewCell.h
//  iCarousel
//
//  Created by eyupcimen on 28/01/2017.
//  Copyright © 2017 eyupcimen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iCarousel/iCarousel.h>


@protocol DidSelectProtocol <NSObject>
-(void)didSelectProtocol:(int)index ;
@end

@interface NewsHeaders :UIView

@property (strong, nonatomic) UIImageView *imageView;
@property (nonatomic,strong) UILabel *label ;

@end


@interface TableiViewCell : UITableViewCell <iCarouselDataSource,iCarouselDelegate>

@property (nonatomic,weak) id <DidSelectProtocol> delegateDidSelect ;
@property (nonatomic,strong) NSArray *number ;
@property(nonatomic, strong) NSArray *news;
@property (weak, nonatomic) IBOutlet iCarousel *carouselView;

@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

- ( void )reloadData:( NSArray * )array;



@end
