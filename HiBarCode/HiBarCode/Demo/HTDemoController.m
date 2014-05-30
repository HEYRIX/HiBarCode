//
//  HTDemoController.m
//  HiBarCode
//
//  Created by Huang Liang on 2014-5-30.
//  Copyright (c) 2014年 Huang Liang. All rights reserved.
//

#import "HTDemoController.h"

@interface HTDemoController ()
{
    UIImageView *_resultImage;
    UITextView *_resultText;
}
@end

@implementation HTDemoController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    CGRect zbarButtonRect = CGRectMake(10.0f, 400.0f, 100.0f, 40.0f);
    UIButton *zbarButton = [[UIButton alloc] initWithFrame:zbarButtonRect];
    {
        zbarButton.tag = 10;
        NSString *text = @"ZBar Scan";
        [zbarButton setTitle:text forState:UIControlStateNormal];
        zbarButton.backgroundColor = [UIColor blueColor];
        [zbarButton addTarget:self action:@selector(onZBarButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    [self.view addSubview:zbarButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark 
#pragma mark -- ZBar actions

- (void)onZBarButtonClicked:(id)aSender
{
    NSLog(@"onZBarButtonClicked");
    
//    // ADD: present a barcode reader that scans from the camera feed
//    ZBarReaderViewController *reader = [ZBarReaderViewController new];
//    reader.readerDelegate = self;
//    
//    ZBarImageScanner *scanner = reader.scanner;
//    // TODO: (optional) additional reader configuration here
//    
//    // EXAMPLE: disable rarely used I2/5 to improve performance
//    [scanner setSymbology: ZBAR_I25 config: ZBAR_CFG_ENABLE to: 0];
//    
//    // present and release the controller
////    [self presentModalViewController:reader animated: YES];
}

#pragma mark 
#pragma mark -- ZBarReaderDelegate

- (void)readerControllerDidFailToRead:(ZBarReaderController*)reader withRetry:(BOOL)retry
{
    
}

@end
