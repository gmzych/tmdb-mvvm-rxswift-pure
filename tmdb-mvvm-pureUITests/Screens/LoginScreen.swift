import XCTest
import Foundation
import tmdb_mvvm_pure

class LoginScreen: BaseScreen {
    
    private lazy var welcomeMessage: XCUIElement = app.staticTexts["Welcome"]
    private lazy var loginTextField: XCUIElement = app.textFields["Your username"]
    private lazy var passwordTextField: XCUIElement = app.secureTextFields["Your password"]
    private lazy var signInButton: XCUIElement = app.buttons["Sign in"]
    private lazy var popUpretunButton: XCUIElement = app.buttons["return"]
    private lazy var loginFailurePopUp: XCUIElement = app.alerts.staticTexts["Login failed"]
    private lazy var firstHomePageHeader: XCUIElement = app.staticTexts["Popular movies"]
    
    func givenAppIsLaunched(){
        XCTAssertTrue(welcomeMessage.exists)
    }
    func loginInputIsTapped(yourUsername: String){
        loginTextField.tap()
        loginTextField.typeText(yourUsername)
    }
    func keyboardPopUpLogin(){
        popUpretunButton.tap()
    }
    func passwordInputIsTapped(yourPassword: String){
        passwordTextField.tap()
        passwordTextField.typeText(yourPassword)
    }
    func keyboardPopUpPassword(){
        popUpretunButton.tap()
    }
    func thenIShouldLoginSuccesfully(){
        signInButton.tap()
        sleep(3)
        XCTAssertTrue(firstHomePageHeader.exists)
    }
    func thenIShouldSeeLoginFailurePopUp(){
        signInButton.tap()
        sleep(3)
        XCTAssertTrue(loginFailurePopUp.exists)
    }
}
