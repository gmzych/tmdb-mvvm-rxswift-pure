import XCTest

class tmdb_mvvm_pureUITests: tmdb_mvvm_pureUITestsBase {
    
    // Do usunięcia 
    func testLoginsuccees() throws {
        app.textFields["Your username"].tap()
        app.textFields["Your username"].typeText("iostest")
        app.keyboards.buttons["return"].tap()
        app.secureTextFields["Your password"].tap()
        app.secureTextFields["Your password"].typeText("test")
        app.keyboards.buttons["return"].tap()
        app.staticTexts["Sign in"].tap()
        sleep(3)
        XCTAssertTrue(app.staticTexts["Popular movies"].exists)
    }
    
    func testLoginfail() throws {
        app.textFields["Your username"].tap()
        app.textFields["Your username"].typeText("test")
        app.keyboards.buttons["return"].tap()
        app.secureTextFields["Your password"].tap()
        app.secureTextFields["Your password"].typeText("test")
        app.keyboards.buttons["return"].tap()
        app.staticTexts["Sign in"].tap()
        sleep(3)
        XCTAssertTrue(app.alerts.staticTexts["Login failed"].exists)
    }
    
    func testFirstSliderSwipe(){
        app.textFields["Your username"].tap()
        app.textFields["Your username"].typeText("iostest")
        app.keyboards.buttons["return"].tap()
        app.secureTextFields["Your password"].tap()
        app.secureTextFields["Your password"].typeText("test")
        app.keyboards.buttons["return"].tap()
        app.staticTexts["Sign in"].tap()
        sleep(3)
        app.swipeLeft(velocity: 200)
    }
    
}
