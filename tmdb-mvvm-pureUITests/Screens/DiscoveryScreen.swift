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
    private lazy var lastElementOfFirstSlider: XCUIElement = app.staticTexts["2021-11-10"]
    private lazy var lastElementOfSecondSlider: XCUIElement = app.staticTexts["Henry Cavill"]
    private lazy var lastElementOfThirdSLider: XCUIElement = app.staticTexts["2021-10-12"]
    private lazy var firstElementOfSecondSlider: XCUIElement = app.staticTexts["Tom Holland"]
    private lazy var searchElementButton: XCUIElement = app.buttons["Search"]
    private lazy var discoverElementButtton: XCUIElement = app.buttons["Discover"]
    
    func isFailurePopUpDispalyed() -> Bool{
        _ = firstHomePageHeader.waitForExistence(timeout: 3)
        return firstHomePageHeader.exists
    }   // funkcja is visibled
    func enterLogin(_ login: String){
        loginTextField.tap()
        loginTextField.typeText(login)
    }
    func closeKeyboardLogin(){
        _ = popUpretunButton.waitForExistence(timeout: 1)
        return popUpretunButton.tap()
    }
    func enterPassword(_ password: String){
        passwordTextField.tap()
        passwordTextField.typeText(password)
    }
    func closeKeyboardPassword(){
        _ = popUpretunButton.waitForExistence(timeout: 1)
        popUpretunButton.tap()
    }
    func loginIsSuccessful() -> Bool{
        _ = firstHomePageHeader.waitForExistence(timeout: 3)
        return firstHomePageHeader.exists
    }
    func swipeFirstSlider(){
        app.scrollToElementSwipeLeft(element:lastElementOfFirstSlider)
    }
    func islastElementOfTheFirstSliderIsDisplayed() -> Bool{
        //_ = lastElementOfFirstSlider.waitForExistence(timeout: 3)
        return lastElementOfFirstSlider.exists
    }
    func swipeSecondSlider(){
        sleep(3)
        app.gentleSwipe(XCUIElement.direction.Up)
        app.scrollToElementSwipeLeft(element: lastElementOfSecondSlider)
    }
    func islastElementOfTheSecondSliderIsDisplayed() -> Bool{
        _ = lastElementOfSecondSlider.waitForExistence(timeout: 3)
        return lastElementOfSecondSlider.exists
    }
    func swipeThirdSlider(){
        sleep(3)
        scrollUntilElementAppears(element: thirdHomePageHeader)
        app.scrollToElementSwipeLeft(element: lastElementOfThirdSLider)
    }
    func isLastElementOfTheThirdSliderDisplayed() -> Bool{
        _ = lastElementOfThirdSLider.waitForExistence(timeout: 3)
        return lastElementOfThirdSLider.exists
    }
    func isFirstHeaderDisplayed() -> Bool{
        _ = firstHomePageHeader.waitForExistence(timeout: 3)
        return firstHomePageHeader.exists
    }
    func isSecondHeaderDisplayed() -> Bool{
        _ = secondHomePageHeader.waitForExistence(timeout: 3)
        return secondHomePageHeader.exists
    }
    func isThirdHeaderDisplayed() -> Bool{
        _ = thirdHomePageHeader.waitForExistence(timeout: 3)
        return thirdHomePageHeader.exists
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
    func loginUserWith(_ login: String,_  password: String){
        loginTextField.tap()
        loginTextField.typeText(login)
        popUpretunButton.tap()
        passwordTextField.tap()
        passwordTextField.typeText(password)
        popUpretunButton.tap()
        signInButton.tap()
    }
}
