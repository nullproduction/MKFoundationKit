//
//  NSDictionary+MK.h
//  MKFoundationKit
//
//  Created by Michal Konturek on 11/07/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (MK)

- (NSMutableDictionary *)MK_renameKeysUsingMapping:(NSDictionary *)mapping;
- (NSMutableDictionary *)MK_dictionaryWithKeys:(NSArray *)keys;

- (BOOL)MK_isEmpty;

@end
