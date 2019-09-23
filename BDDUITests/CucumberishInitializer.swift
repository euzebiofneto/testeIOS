//
//  BDDUITests.swift
//  BDDUITests
//
//  Created by Euzébio on 19/09/19.
//  Copyright © 2019 Euzébio. All rights reserved.
//

import XCTest
import Foundation
import Cucumberish

public class CucumberishInitializer: NSObject {
   @objc public class func CucumberishSwiftInit()
    {
        //Using XCUIApplication only available in XCUI test targets not the normal Unit test targets.
        var application : XCUIApplication!
        //A closure that will be executed only before executing any of your features
        beforeStart { () -> Void in
            application = XCUIApplication()
            application.launch()
            LoginStep().Login()
        }
        
        //Create a bundle for the folder that contains your "Features" folder. In this example, the CucumberishInitializer.swift file is in the same directory as the "Features" folder.
        let bundle = Bundle(for: CucumberishInitializer.self)
        
        Cucumberish.executeFeatures(inDirectory: "Features", from: bundle, includeTags: nil, excludeTags: nil)
    }
}
