//
//  TableViewCell.m
//  IOS_UI
//
//  Created by xunming Tan on 2020/8/11.
//  Copyright © 2020 xmt. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setUpView];
    }
    return self;
}

-(void)setUpView
{
    UILabel *textLab = [[UILabel alloc]init];
    textLab.numberOfLines = 0;
    textLab.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:textLab];
    self.textLab=textLab;
    [textLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.contentView).offset(10);
        make.left.mas_equalTo(self.contentView).offset(5);
        make.bottom.mas_equalTo(self.contentView).offset(-5);
        make.right.mas_equalTo(self.contentView.mas_right).offset(-5);
    }];
}


- (void)awakeFromNib {
    [super awakeFromNib];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
