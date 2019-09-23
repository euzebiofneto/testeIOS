//
//  Login.swift
//  BDDUITests
//
//  Created by Euzébio on 19/09/19.
//  Copyright © 2019 Euzébio. All rights reserved.
//

import Foundation
import Cucumberish
import XCTest

class LoginStep: XCTestCase {
    func Login(){
        Given("the app is running") { (args, userInfo) -> Void in
            let app = XCUIApplication()
            let testButton = app/*@START_MENU_TOKEN@*/.buttons["test"]/*[[".buttons[\"TESTE\"]",".buttons[\"test\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            testButton.tap()
            testButton.tap()
            testButton.tap()
            app.textFields["text"].tap()
            testButton.tap()
            
        }
    }
}
