//
//  Window_ShoperTests.swift
//  Window-ShoperTests
//
//  Created by Rajesh on 09/01/2019.
//  Copyright © 2019 Rajesh. All rights reserved.
//

import XCTest

class Window_ShoperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWege(){
        XCTAssert(Wege.getHours(forWege: 25, andPrice: 100) == 4)
        XCTAssert(Wege.getHours(forWege: 15.50, andPrice: 250.53) == 17)
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
