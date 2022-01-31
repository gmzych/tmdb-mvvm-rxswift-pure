import XCTest
import Foundation

class LoginTestsSuite: BaseTestsSuite{
    let loginScreen = LoginScreen()
    let discoveryScreen = DiscoveryScreen()

    func testLoginSuccees(){
        loginScreen.enterLogin(UserData.login)
        loginScreen.closeKeyboardLogin()
        loginScreen.enterPassword(UserData.password)
        loginScreen.closeKeyboardPassword()
        loginScreen.tapLoginButton()
        XCTAssertTrue(discoveryScreen.isFailurePopUpDispalyed(),
                      "Failure pop up message is displayed.")
    }
    func testLoginFailed(){
        loginScreen.enterLogin(UserData.login)
        loginScreen.closeKeyboardLogin()
        loginScreen.enterPassword(UserData.wrongPassword)
        loginScreen.closeKeyboardPassword()
        loginScreen.tapLoginButton()
        XCTAssertTrue(loginScreen.isFailurePopUpDispalyed(),
                      "Failure pop up message is not displayed.")
    }
}
