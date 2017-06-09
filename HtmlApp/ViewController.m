//
//  ViewController.m
//  HtmlApp
//
//  Created by WangGeng on 2017/4/12.
//  Copyright © 2017年 WangGeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property(strong ,nonatomic) NSString *tileStr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.delegate = self;
//    self.webView.scalesPageToFit = YES;
    [self loadhtml];


    
}


- (void)loadhtml {

    //
    NSString *path = [[NSBundle mainBundle] pathForResource:@"html/dl" ofType:@"html"];
    NSString *htmlString1 = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    NSLog(@"%@",htmlString1);
    NSString *urlStr = [NSString stringWithFormat:@"%@/html",[[NSBundle mainBundle] bundlePath]];
    NSURL *url = [NSURL fileURLWithPath:urlStr isDirectory:YES];
      [self.webView loadHTMLString:htmlString1 baseURL:url];
     //
//    
//    NSString *mainBundlePath = [[NSBundle mainBundle] bundlePath];
//    
//    NSLog(@"%@",mainBundlePath);
//    NSString *basePath = [NSString stringWithFormat:@"%@/html",mainBundlePath];
//    NSURL *baseUrl = [NSURL fileURLWithPath:basePath isDirectory:YES];
//    
//    NSString *htmlPath = [NSString stringWithFormat:@"%@/start.html",basePath];
//    NSString *htmlString = [NSString stringWithContentsOfFile:htmlPath encoding:NSUTF8StringEncoding error:nil];
//    [self.webView loadHTMLString:htmlString baseURL:baseUrl];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{

        [webView stringByEvaluatingJavaScriptFromString:@"document.body.style.zoom=0.52"];//6
//     [webView stringByEvaluatingJavaScriptFromString:@"document.body.style.zoom=0.62"];//6p
}
@end
