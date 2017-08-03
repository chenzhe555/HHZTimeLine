//
//  DemoTimeLineCell.m
//  HHZTimeLine
//
//  Created by 陈哲是个好孩子 on 2017/8/3.
//  Copyright © 2017年 陈哲是个好孩子. All rights reserved.
//

#import "DemoTimeLineCell.h"

@implementation DemoTimeLineCell

+(instancetype)configDemoTimeLineCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath rowCount:(NSInteger)rowCount
{
    DemoTimeLineCell * cell = [super configDemoTimeLineCell:tableView indexPath:indexPath rowCount:rowCount];
    if (indexPath.row == 3)
    {
        cell.leftIconImageView.image = [UIImage imageNamed:@"test"];
    }
    else
    {
        cell.leftIconImageView.image = [UIImage imageNamed:@"test1"];
    }
    
    if (indexPath.row == 5)
    {
        cell.topLineView.backgroundColor = [UIColor lightGrayColor];
        cell.bottomLineView.backgroundColor = [UIColor redColor];
    }
    
    if (indexPath.row == 6)
    {
        cell.topLineView.backgroundColor = [UIColor redColor];
        cell.bottomLineView.backgroundColor = [UIColor lightGrayColor];
    }

    return cell;
}

@end
