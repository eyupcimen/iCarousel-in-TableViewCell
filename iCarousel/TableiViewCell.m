//
//  TableiViewCell.m
//  iCarousel
//
//  Created by eyupcimen on 28/01/2017.
//  Copyright © 2017 eyupcimen. All rights reserved.
//

#import "TableiViewCell.h"


@implementation NewsHeaders

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.imageView = [[UIImageView alloc] initWithFrame:frame];
        self.label = [[UILabel alloc] initWithFrame:frame];
        [self addSubview:self.imageView];
        [self addSubview:self.label];
        
    }
    return self;
}

@end



@implementation TableiViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _number = @[ @"01",@"02",@"03",@"04",@"05",@"06",@"07",@"08" ,@"09" ,@"10" ] ;
    self.carouselView.dataSource = self;
    self.carouselView.delegate = self;
    self.carouselView.bounces = NO;
    self.carouselView.pagingEnabled = YES;
    self.carouselView.clipsToBounds = NO;
    
    self.carouselView.type = iCarouselTypeCoverFlow ;
    self.pageControl.userInteractionEnabled = NO;
    
    [self reloadData:_number];
}



- ( void )carouselDidScroll:( iCarousel * )carousel; {
    self.pageControl.currentPage = carousel.currentItemIndex;
}

-(NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return _number.count ;
}

- ( UIView * )carousel:( iCarousel * )carousel viewForItemAtIndex:( NSInteger )index reusingView:( UIView * )view; {
    
    if (!view) {
        
        view = [[NewsHeaders alloc] initWithFrame:CGRectMake(0.0f, 0.0f, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width * 0.6f)];
        [view setBackgroundColor:[UIColor clearColor]];
    }
    
    //((NewsHeaders *)view).label.text = self.number[index];
    //((NewsHeaders *)view).label.backgroundColor = [UIColor clearColor];
    ((NewsHeaders *)view).imageView.image = [UIImage imageNamed: [NSString stringWithFormat:@"%@.png" ,self.number[index] ]];
    
    return view;
}

- (void)carousel:(iCarousel *)carousel didSelectItemAtIndex:(NSInteger)index
{
    [_delegateDidSelect didSelectProtocol:index ]; 
}

- ( void )reloadData:( NSArray * )array {
    self.news = array;
    [self.carouselView reloadData];
    self.pageControl.numberOfPages = array.count;
    
    for (UIView *dot in self.pageControl.subviews) {
        dot.layer.borderWidth = 1.0f;
        dot.layer.borderColor = self.pageControl.currentPageIndicatorTintColor.CGColor;
    }
}



@end
