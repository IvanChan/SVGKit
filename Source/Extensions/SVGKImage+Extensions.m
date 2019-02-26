//
//  SVGKImage+Extensions.m
//  SVGKit-iOS
//
//  Created by _ivanC on 2019/2/26.
//  Copyright © 2019 na. All rights reserved.
//

#import "SVGKImage+Extensions.h"
#import "SVGElement+Extensions.h"

@implementation SVGKImage (Extensions)

- (void)setTintColor:(UIColor *)tintColor
{
    CGFloat r = 0;
    CGFloat g = 0;
    CGFloat b = 0;
    CGFloat a = 1;
    [tintColor getRed:&r green:&g blue:&b alpha:&a];
    
    int red = r * 255;
    int green = g * 255;
    int blue = b * 255;

    NSString *hexString = [NSString stringWithFormat:@"#%02x%02x%02x",red, green, blue];
    [self setTintColorHexString:hexString];
}

- (void)setTintColorHexString:(NSString *)colorHexString
{
    if (colorHexString.length <= 0) {
        return;
    }
    
    [self.DOMTree setTintColorHexString:colorHexString];
}

@end
