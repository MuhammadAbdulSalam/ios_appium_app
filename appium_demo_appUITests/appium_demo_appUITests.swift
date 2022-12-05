//
//  appium_demo_appUITests.swift
//  appium_demo_appUITests
//
//  Created by Muhammad AbdulSalam on 05/12/2022.
//

import XCTest

final class appium_demo_appUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {}

    func testExample() throws {
        let app = XCUIApplication()
        
        HomeScreenRobot(app)
            .start()
            .staticElementsExist()
            .btnClickMeTab()
            .confirmTextChange(query: "New Text")
        
    }
    

    
}
