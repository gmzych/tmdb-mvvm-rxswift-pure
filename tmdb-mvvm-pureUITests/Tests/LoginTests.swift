import XCTest
import Foundation

class LoginTests: BaseTests{
    let loginScreen = LoginScreen()
    func testLoginsuccees(){
        loginScreen.givenAppIsLaunched()
        loginScreen.loginInputIsTapped(yourUsername:"iostest")
        loginScreen.keyboardPopUpLogin()
        loginScreen.passwordInputIsTapped(yourPassword:"test")
        loginScreen.keyboardPopUpPassword()
        loginScreen.thenIShouldLoginSuccesfully()
    }
    func testLoginFailed(){
        loginScreen.givenAppIsLaunched()
        loginScreen.loginInputIsTapped(yourUsername:"test")
        loginScreen.keyboardPopUpLogin()
        loginScreen.passwordInputIsTapped(yourPassword:"test")
        loginScreen.keyboardPopUpPassword()
        loginScreen.thenIShouldSeeLoginFailurePopUp()
    }
}
