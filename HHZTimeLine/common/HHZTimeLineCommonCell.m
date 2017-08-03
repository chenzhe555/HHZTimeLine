//
//  HHZTimeLineCommonCell.m
//  HHZTimeLine
//
//  Created by 陈哲是个好孩子 on 2017/8/3.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import "HHZTimeLineCommonCell.h"

#define HHZTimeLineCommonCellLeftIconSpace 20
#define HHZTimeLineCommonCellImageSpace 0

@interface HHZTimeLineCommonCell ()
@property (nonatomic, assign) CGFloat lineHeight;
@end

@implementation HHZTimeLineCommonCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.leftIconImageView.frame = CGRectMake(HHZTimeLineCommonCellLeftIconSpace, (self.bounds.size.height - 30)/2, 30, 30);
    self.topLineView.frame = CGRectMake(self.leftIconImageView.frame.origin.x + self.leftIconImageView.frame.size.width/2.0f, 0, 1, self.lineHeight);
    self.bottomLineView.frame = CGRectMake(self.leftIconImageView.frame.origin.x + self.leftIconImageView.frame.size.width/2.0f, self.leftIconImageView.frame.origin.y + self.leftIconImageView.bounds.size.height + HHZTimeLineCommonCellImageSpace,1, self.lineHeight);
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.leftIconImageView = [[UIImageView alloc] init];
        self.leftIconImageView.image = [UIImage imageNamed:@"test1"];
        self.leftIconImageView.layer.cornerRadius = 15;
        self.leftIconImageView.layer.masksToBounds = YES;
        [self addSubview:self.leftIconImageView];
    }
    return self;
}

-(UIView *)topLineView
{
    if (!_topLineView)
    {
        _topLineView = [[UIView alloc] init];
        _topLineView.hidden = YES;
        _topLineView.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:_topLineView];
    }
    return _topLineView;
}

-(UIView *)bottomLineView
{
    if (!_bottomLineView)
    {
        _bottomLineView = [[UIView alloc] init];
        _bottomLineView.hidden = YES;
        _bottomLineView.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:_bottomLineView];
    }
    return _bottomLineView;
}

+(instancetype)configDemoTimeLineCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath rowCount:(NSInteger)rowCount
{
    static NSString * cellIdentifier = @"HHZTimeLineCommonCellIdentifier";
    id cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell)
    {
        cell = [[[self class] alloc] init];
        ((UITableViewCell *)cell).selectionStyle = UITableViewCellSelectionStyleNone;
    }
    [cell judgeLineState:indexPath rowCount:rowCount cell:cell];
    return cell;
}

-(void)judgeLineState:(NSIndexPath *)indexPath rowCount:(NSInteger)rowCount cell:(HHZTimeLineCommonCell *)cell
{
    if (indexPath.row == 0)
    {
        cell.topLineView.hidden = YES;
        cell.bottomLineView.hidden = NO;
    }
    else if (indexPath.row == (rowCount - 1))
    {
        cell.topLineView.hidden = NO;
        cell.bottomLineView.hidden = YES;
    }
    else
    {
        cell.topLineView.hidden = NO;
        cell.bottomLineView.hidden = NO;
    }
}

-(CGFloat)lineHeight
{
    if (_lineHeight == 0)
    {
        _lineHeight = self.leftIconImageView.frame.origin.y - HHZTimeLineCommonCellImageSpace;
    }
    return _lineHeight;
}

@end
