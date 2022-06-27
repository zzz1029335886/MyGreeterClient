//
//  MyGreeterClientTests.swift
//  MyGreeterClientTests
//
//  Created by zerry on 2022/6/27.
//

import XCTest
@testable import MyGreeterClient

class MyGreeterClientTests: XCTestCase {
    
    func testInstance() throws {
        let client = Client()
        let name = String(describing: Bundle.main.infoDictionary?["CFBundleExecutable"] ?? "")
        XCTAssert(NSStringFromClass(type(of: client)) == (name + ".Client"))
    }
    
    func testGetGreeting() {
        let client = Client()
        
        XCTAssertGreaterThan(client.getGreeting().count, 0, "getGreeting test failed")
    }
    
}
