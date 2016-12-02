//
//  ThirdPartyManager.m
//  TestJSPatchSwift
//
//  Created by lanfeng on 16/12/2.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

#import "ThirdPartyManager.h"
#import <JSPatchPlatform/JSPatch.h>
#import <JSPatchPlatform/JPEngine.h>

/** JSPatch appKey */
static NSString *const kJSPatchKey = @"";

@implementation ThirdPartyManager

+ (void)thirdPartySetup:(id)option {
    [self setupJSPatch];
}

+ (void)setupJSPatch {
    [JSPatch startWithAppKey:kJSPatchKey];
#ifdef DEBUG
    [JSPatch setupDevelopment];
#endif
    [JSPatch sync];
}
@end
