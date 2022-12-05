//
//  appium_demo_appUITests.swift
//  appium_demo_appUITests
//
//  Created by Muhammad AbdulSalam on 05/12/2022.
//

import XCTest

final class appium_demo_appUITests: XCTestCase {

    func testExample() throws {
        let app = XCUIApplication()
        
        HomeScreenRobot(app)
            .start()
            .checkIfLabelExist(query: "Hello, World!")
            .checkIfGlobeImageExist()
            .tapClickMeButton()
            .checkIfLabelExist(query: "First Change")
            .tapClickAgainButton()
            .checkIfLabelExist(query: "Second Change")
            
    }
    
}
