//
//  tmdb_mvvm_pureTests.swift
//  tmdb-mvvm-pureTests
//
//  Created by krawiecp-home on 27/01/2019.
//  Copyright © 2019 tailec. All rights reserved.
//

import XCTest
@testable import tmdb_mvvm_pure

class tmdb_mvvm_pureTests: XCTestCase {

    override func setUp() {
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
