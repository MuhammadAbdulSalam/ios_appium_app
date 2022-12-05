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
    private lazy var btnClick        = app.buttons["Click-Me"]
    private lazy var btnClickAgain   = app.buttons["Click-Again"]

    @discardableResult
    func checkIfGlobeImageExist() -> Self {
        assert(app.images["Globe"], [.exists])
        return self
    }
    
    @discardableResult
    func checkIfLabelExist(query: String) -> Self {
        assert(app.staticTexts[query], [.exists])
        return self
    }
    
    @discardableResult
    func tapClickMeButton() -> Self {
        tap(btnClick)
        return self
    }
    
    @discardableResult
    func tapClickAgainButton() -> Self {
        tap(btnClickAgain)
        return self
    }
    
    
    
 
}
