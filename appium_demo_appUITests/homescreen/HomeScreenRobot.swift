//
//  HomeScreenRobot.swift
//  appium_demo_appUITests
//
//  Created by Muhammad AbdulSalam on 05/12/2022.
//

import Foundation
import XCTest

final class HomeScreenRobot : BaseRobot{
    
    private lazy var tvHelloWorld    = app.staticTexts["Hello, World!"]
    private lazy var ivGlobe         = app.images["Globe"]
    private lazy var btnClick        = app.buttons["Click Me"]

    @discardableResult
    func staticElementsExist() -> Self {
        assert(tvHelloWorld, [.exists])
        assert(ivGlobe, [.exists])
        return self
    }
    
    
    @discardableResult
    func confirmTextChange(query: String) -> Self {
        assert(app.staticTexts[query], [.exists])
        return self
    }
    
    
    @discardableResult
    func btnClickMeTab() -> Self {
        tap(btnClick)
        return self
    }
    
 
}
