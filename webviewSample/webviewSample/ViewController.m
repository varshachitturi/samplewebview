//
//  ViewController.m
//  webviewSample
//
//  Created by Chitturi,Varsha on 5/3/17.
//  Copyright © 2017 Chitturi,Varsha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WKWebViewConfiguration *theConfiguration = [[WKWebViewConfiguration alloc] init];
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:theConfiguration];
    WKPreferences *thisPref = [[WKPreferences alloc] init];
    thisPref.javaScriptCanOpenWindowsAutomatically = YES;
    thisPref.javaScriptEnabled = YES;
    theConfiguration.preferences = thisPref;
    webView.navigationDelegate = self;
    NSURL *nsurl=[NSURL URLWithString:@"https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_win_open2"];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [webView loadRequest:nsrequest];
    [self.view addSubview:webView];
    webView.allowsBackForwardNavigationGestures = true;
    webView.allowsLinkPreview = true;
    
}
-(WKWebView *) getPopwindow:(WKWebViewConfiguration*) configuration{
    WKWebView* webView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:configuration];
    webView.frame = CGRectMake(self.view.frame.origin.x,self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    return webView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
