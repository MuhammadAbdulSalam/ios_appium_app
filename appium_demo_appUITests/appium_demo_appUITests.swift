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
            .checkIfLabelExist(query: "Default Currency")
            .checkIfLabelExist(query: "EUR")
            .checkIfLabelExist(query: "Amount")
            .checkIfLabelExist(query: "Default Currency")
            .tapFetchClick()
            .tapHistoryClick()
                     
    }
    
}
