//
//  NSString+MK_Misc.m
//  MKFoundation
//
//  Created by Michal Konturek on 04/11/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "NSString+MK_Misc.h"

@implementation NSString (MK_Misc)

- (NSString *)MK_firstComponent:(NSCharacterSet *)separators {
    return [self MK_componentAtIndex:0 usingSeparators:separators];
}

- (NSString *)MK_lastComponent:(NSCharacterSet *)separators {
    NSArray *components = [self componentsSeparatedByCharactersInSet:separators];
    return (components.count == 1) ? @"" : [components lastObject];
}

- (NSString *)MK_componentAtIndex:(NSInteger)index usingSeparators:(NSCharacterSet *)separators {
    NSArray *components = [self componentsSeparatedByCharactersInSet:separators];
    return (components.count == 1) ? @"" : [components objectAtIndex:index];
}

- (BOOL)MK_containsString:(NSString *)term caseSensitive:(BOOL)caseSensitive {
    NSString *target = (caseSensitive) ? self : [self lowercaseString];
    NSString *searchTerm = (caseSensitive) ? term : [term lowercaseString];
    NSRange range = [target rangeOfString:searchTerm];
    return (range.location != NSNotFound);
}

@end
