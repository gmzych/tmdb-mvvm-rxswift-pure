import XCTest
import Foundation

class BaseTests: XCTestCase {
    
    var app = XCUIApplication()
    override func setUp(){
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    override func tearDown() {
        super.tearDown()
    }
    
}
