//
//  CucumberishLoader.m
//  BDDUITests
//
//  Created by Euzébio on 19/09/19.
//  Copyright © 2019 Euzébio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BDDUITests-Swift.h"
#import <XCTest/XCTest.h>

__attribute__((constructor))
void CucumberishInit()
{
    [CucumberishInitializer CucumberishSwiftInit];
}
