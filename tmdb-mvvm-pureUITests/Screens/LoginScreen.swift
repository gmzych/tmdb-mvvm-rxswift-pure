import XCTest
import Foundation
import tmdb_mvvm_pure

class LoginScreen: BaseScreen {
    
    private lazy var loginTextField: XCUIElement = app.textFields["Your username"]
    private lazy var passwordTextField: XCUIElement = app.secureTextFields["Your password"]
    private lazy var signInButton: XCUIElement = app.buttons["Sign in"]
    private lazy var popUpretunButton: XCUIElement = app.buttons["return"]
    private lazy var loginFailurePopUp: XCUIElement = app.alerts.staticTexts["Login failed"]
    private lazy var firstHomePageHeader: XCUIElement = app.staticTexts["Popular movies"]

    func enterPassword(_ password: String){
        passwordTextField.tap()
        passwordTextField.typeText(password)
    }
    func enterLogin(_ login: String){
        loginTextField.tap()
        loginTextField.typeText(login)
    }
    func closeKeyboardLogin(){
        _ = popUpretunButton.waitForExistence(timeout: 1)
        popUpretunButton.tap()
    }
    func closeKeyboardPassword(){
        return popUpretunButton.tap()
    }
    func tapLoginButton(){
        signInButton.tap()
        sleep(3)
    }
    func isFailurePopUpDispalyed() -> Bool{
        _ = loginFailurePopUp.waitForExistence(timeout: 2)
        return loginFailurePopUp.exists
    }
}

