//
//  SVGElement+Extensions.m
//  SVGKit-iOS
//
//  Created by _ivanC on 2019/2/26.
//  Copyright © 2019 na. All rights reserved.
//

#import "SVGElement+Extensions.h"

@implementation SVGElement (Extensions)

- (void)setTintColorHexString:(NSString *)colorHexString
{
    if ([self cascadedValueForStylableProperty:@"fill"]) {
        if (!self.style) {
            self.style = [CSSStyleDeclaration new];
        }
        
        [self.style setProperty:@"fill" value:colorHexString priority:@""];
    }
    
    for (SVGElement *child in self.childNodes )
    {
        if (![child isKindOfClass:[SVGElement class]])
        {
            continue;
        }
        [child setTintColorHexString:colorHexString];
    }
}

@end
