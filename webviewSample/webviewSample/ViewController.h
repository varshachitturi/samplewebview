//
//  ViewController.h
//  webviewSample
//
//  Created by Chitturi,Varsha on 5/3/17.
//  Copyright © 2017 Chitturi,Varsha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet WKWebView *webView;
@property (strong, nonatomic) NSString *fullURL;
@property(nonatomic) BOOL allowsLinkPreview;
@property(nonatomic, assign) id<UINavigationControllerDelegate,UIImagePickerControllerDelegate>delegate;

@end

