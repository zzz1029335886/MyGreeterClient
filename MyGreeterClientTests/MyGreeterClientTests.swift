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
        for _ in 0...23 {
            client.nowDate = client.nowDate.addingTimeInterval(60 * 60)
            
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: client.nowDate)
            
            let greetingStr: String
            switch hour{
            case 6...11:
                greetingStr = "Good morning"
            case 12...17:
                greetingStr = "Good afternoon"
            default:
                greetingStr = "Good evening"
            }
            
            XCTAssert(client.getGreeting() == greetingStr)
//            XCTAssertGreaterThan(client.getGreeting().count, 0, "getGreeting test failed")
        }
        
    }
    
}
