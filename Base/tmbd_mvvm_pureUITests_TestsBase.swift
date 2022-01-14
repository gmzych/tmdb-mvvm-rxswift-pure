import XCTest
import Foundation

class tmdb_mvvm_pureUITestsBase: XCTestCase {
    
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
