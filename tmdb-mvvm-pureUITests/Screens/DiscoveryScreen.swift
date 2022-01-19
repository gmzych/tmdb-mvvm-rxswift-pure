import XCTest
import Foundation

class DiscoveryScreen: BaseScreen {
    
    private lazy var welcomeMessage: XCUIElement = app.staticTexts["Welcome"]
    private lazy var loginTextField: XCUIElement = app.textFields["Your username"]
    private lazy var passwordTextField: XCUIElement = app.secureTextFields["Your password"]
    private lazy var signInButton: XCUIElement = app.buttons["Sign in"]
    private lazy var popUpretunButton: XCUIElement = app.buttons["return"]
    private lazy var firstHomePageHeader: XCUIElement = app.staticTexts["Popular movies"]
    private lazy var secondHomePageHeader: XCUIElement = app.staticTexts["Trending people"]
    private lazy var thirdHomePageHeader: XCUIElement = app.staticTexts["TV shows"]
    private lazy var lastElementOfFirstSlider: XCUIElement = app.staticTexts["2021-04-15"]
    private lazy var lastElementOfSecondSlider: XCUIElement = app.staticTexts["Finn Little"]
    private lazy var lastElementOfThirdSLider: XCUIElement = app.staticTexts["2022-01-05"]
    private lazy var searchElementButton: XCUIElement = app.buttons["Search"]
    private lazy var discoverElementButtton: XCUIElement = app.buttons["Discover"]
    
    func givenAppIsLaunched(){
        XCTAssertTrue(welcomeMessage.exists)
    }
    func loginInputIsTapped(yourUsername: String){
        loginTextField.tap()
        loginTextField.typeText("iostest")
    }
    func keyboardPopUpLogin(){
        popUpretunButton.tap()
    }
    func passwordInputIsTapped(yourPassword: String){
        passwordTextField.tap()
        passwordTextField.typeText("test")
    }
    func keyboardPopUpPassword(){
        popUpretunButton.tap()
    }
    func iShouldLoginSuccesfully(){
        signInButton.tap()
        sleep(3)
        XCTAssertTrue(firstHomePageHeader.exists)
    }
    func swipeFirstSlider(){
        app.scrollToElementSwipeLeft(element:lastElementOfFirstSlider)
    }
    func thenIshouldSeeLastElementOfTheFirstSlider()
    {
        XCTAssertTrue(lastElementOfFirstSlider.exists)
    }
    func swipeSecondSlider(){
        app.swipeUp(velocity: 30)
        app.scrollToElementSwipeLeft(element: lastElementOfSecondSlider)
    }
    func thenIshouldSeeLastElementOfTheSecondSlider(){
        XCTAssertTrue(lastElementOfSecondSlider.exists)
    }
    func swipeThirdSlider(){
        app.swipeUp()
        // wybrac ostatni slider z dostepnych dwoch na tym widoku
        if thirdHomePageHeader.exists{
                
                app.scrollToElementSwipeLeft(element: lastElementOfThirdSLider)
        }
        else
        {
            app.swipeUp()
        }
    }
    func thenIshouldSeeLastElementOfTheThirdSlider(){
        XCTAssertTrue(lastElementOfThirdSLider.exists)
    }
    func thenIShouldSeeFirstHomePageHeader(){
        XCTAssertTrue(firstHomePageHeader.exists)
    }
    func thenIshouldSeeSecondHomePageHeader(){
        XCTAssertTrue(secondHomePageHeader.exists)
    }
    func thenIshouldSeeThirdHomePageHeader(){
        app.scrollToElementSwipeUp(element: thirdHomePageHeader)
        XCTAssertTrue(thirdHomePageHeader.exists)
    }
    func scrollDownToTheBottom(){
        app.scrollToElementSwipeUp(element: thirdHomePageHeader)
    }
    func tapOnSearchButton(){
        searchElementButton.tap()
    }
    func tapOnDiscoverButton(){
        discoverElementButtton.tap()
    }
}
