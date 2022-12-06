//
//  HomeScreenRobot.swift
//  appium_demo_appUITests
//
//  Created by Muhammad AbdulSalam on 05/12/2022.
//

import Foundation
import XCTest

final class HomeScreenRobot : BaseRobot{
    
    private lazy var imgGlobe        = app.images["Globe"]
    private lazy var btnFetch        = app.buttons["Fetch"]
    private lazy var btnHistory      = app.buttons["History"]
    private lazy var tfAmount        = app.textFields["amount"]
    
    @discardableResult
    func tapFetchClick() -> Self {
        tap(btnFetch)
        return self
    }
    
    @discardableResult
    func tapHistoryClick() -> Self {
        tap(btnHistory)
        return self
    }
    
    
    
 
}
