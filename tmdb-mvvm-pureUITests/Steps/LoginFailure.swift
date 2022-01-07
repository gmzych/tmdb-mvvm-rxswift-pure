import XCTest
import Foundation


extension tmdb_mvvm_pureUITests_BDD{
    func _givenAppIsLaunchedLoginSuccess(){
        XCTAssertTrue(LoginPageScreen.welcomeMessage.element.exists)
    }
    func _loginInputIsTapped(yourUsername: String){
        LoginPageScreen.loginTextField.element.tap()
        LoginPageScreen.loginTextField.element.typeText("test")
    }
    func _keyboardLoginPopUpIsClosed(){
        LoginPageScreen.popUpretunButton.element.tap()
    }
    func _passwordInputIsTapped(yourPassword: String){
        LoginPageScreen.passwordTextField.element.tap()
        LoginPageScreen.passwordTextField.element.typeText("test")
    }
    func _keyboardPasswordPopUpIsClosed(){
        LoginPageScreen.popUpretunButton.element.tap()
    }
    func _signInbuttonIsTapped(){
        LoginPageScreen.signInButton.element.tap()
        sleep(3)
    }
    func _thenIShouldSeeLoginFailurePopUp(){
        XCTAssertTrue(LoginPageScreen.loginFailurePopUp.element.exists)
    }
    
}
