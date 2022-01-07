import XCTest
import Foundation


extension tmdb_mvvm_pureUITests_BDD{
    // extension przerobic na klasy
    // extension - nie naduzywac, protokoly
    // zalety programowania obiektowego
    func givenAppIsLaunched(){
        XCTAssertTrue(LoginPageScreen.welcomeMessage.element.exists)
    }
    func loginInputIsTapped(yourUsername: String){
        LoginPageScreen.loginTextField.element.tap()
        LoginPageScreen.loginTextField.element.typeText("iostest")
    }
    func keyboardPopUpLogin(){
        LoginPageScreen.popUpretunButton.element.tap()
    }
    func passwordInputIsTapped(yourPassword: String){
        LoginPageScreen.passwordTextField.element.tap()
        LoginPageScreen.passwordTextField.element.typeText("test")
    }
    func keyboardPopUpPassword(){
        LoginPageScreen.popUpretunButton.element.tap()
    }
    func thenIShouldLoginSuccesfully(){
        LoginPageScreen.signInButton.element.tap()
        sleep(3)
        XCTAssertTrue(HomePageScreen.firstHomePageHeader.element.exists)
    }
    func iShouldLoginSuccesfully(){
        LoginPageScreen.signInButton.element.tap()
        sleep(3)
        XCTAssertTrue(HomePageScreen.firstHomePageHeader.element.exists)
    }
    
    
    
}
