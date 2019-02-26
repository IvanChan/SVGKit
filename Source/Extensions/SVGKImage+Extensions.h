//
//  SVGKImage+Extensions.h
//  SVGKit-iOS
//
//  Created by _ivanC on 2019/2/26.
//  Copyright © 2019 na. All rights reserved.
//

#import "SVGKImage.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SVGKImage (Extensions)

- (void)setTintColor:(UIColor *)tintColor;
- (void)setTintColorHexString:(NSString *)colorHexString;

@end

NS_ASSUME_NONNULL_END
