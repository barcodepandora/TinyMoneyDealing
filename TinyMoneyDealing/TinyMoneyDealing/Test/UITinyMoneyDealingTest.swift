//
//  UITinyMoneyDealingTest.swift
//  TinyMoneyDealingTests
//
//  Created by Juan Manuel Moreno on 15/08/24.
//

import XCTest
@testable import TinyMoneyDealing

class UITinyMoneyDealingTest: XCTestCase {

    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        super.setUp()
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testEmailLabelAppears() {
        XCTAssertTrue(app.staticTexts["Email:"].exists)
    }

    func testEmailValueAppears() {
        let emailValue = app.staticTexts["tiny.email"]
        XCTAssertTrue(emailValue.exists)
        XCTAssertNotNil(emailValue.label)
    }

    func testPaymentDetailsSectionAppears() {
        XCTAssertTrue(app.staticTexts["Payment Details"].exists)
    }

    func testDueInLabelAppears() {
        XCTAssertTrue(app.staticTexts["Due in:"].exists)
    }
}
