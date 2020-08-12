//
//  ViewController.m
//  IOS_UI
//
//  Created by xunming Tan on 2020/8/11.
//  Copyright © 2020 xmt. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
 
#import "YYFPSLabel.h"

static NSString *cellID = @"cell";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *arr;
}
 
@property (nonatomic, strong) YYFPSLabel *fpsLabel;
@property (nonatomic, weak) UITableView *tableView;

//@property (nonatomic, strong) NSMutableDictionary *heightAtIndexPath;//缓存高度所用字典

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setUpView];
    [self setUpData];

    [self testFPSLabel];

}

- (void)testFPSLabel {
    _fpsLabel = [YYFPSLabel new];
    _fpsLabel.frame = CGRectMake(200, 200, 50, 30);
    [_fpsLabel sizeToFit];
    [self.view addSubview:_fpsLabel];
 
}


 
-(void)setUpView
{
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
//    tableView.estimatedRowHeight = 100;
//    tableView.rowHeight = UITableViewAutomaticDimension;
    tableView.fd_debugLogEnabled = YES;
    [tableView registerClass:[TableViewCell class] forCellReuseIdentifier:cellID];
    [self.view addSubview:tableView];
 
    self.tableView=tableView;
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arr.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.textLab.text = arr[indexPath.row];
    return cell ;
}
 
#pragma mark - <UITableView+FDTemplateLayoutCell.h>
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return [_tableView fd_heightForCellWithIdentifier:cellID cacheByKey:indexPath configuration:^(TableViewCell *cell) {
        
        cell.textLab.text = self->arr[indexPath.row];
        
    }];
}

 

#pragma mark - 缓存高度
//-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSNumber *height = [self.heightAtIndexPath objectForKey:indexPath];
//    if(height)
//    {
//        return height.floatValue;
//    }
//    else
//    {
//        return 100;
//    }
//}
//
//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSNumber *height = @(cell.frame.size.height);
//    [self.heightAtIndexPath setObject:height forKey:indexPath];
//}


-(void)setUpData
{
    
    arr = @[@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发",@"iOS开发",@"iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发iOS开发",@"iOS开发", ];
    
}

@end
