//
//  HHZTimeLineCommonCell.h
//  HHZTimeLine
//
//  Created by 陈哲是个好孩子 on 2017/8/3.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHZTimeLineCommonCell : UITableViewCell
@property (nonatomic, strong) UIImageView * leftIconImageView;
@property (nonatomic, strong) UIView * topLineView;
@property (nonatomic, strong) UIView * bottomLineView;
+(instancetype)configDemoTimeLineCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath rowCount:(NSInteger)rowCount;
@end

NS_ASSUME_NONNULL_END
