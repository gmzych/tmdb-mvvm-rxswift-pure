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
    private lazy var descriptionMovieTitle: XCUIElement = app.staticTexts["Eternals"]
    private lazy var firstMovieFromTheFirstSlider: XCUIElement = app.staticTexts["Eternals"]
    private lazy var firstMovieFromTheFirstSliderTitle: XCUIElement = app.staticTexts["Eternals"]
    private lazy var firstMovieFromTheFirstSliderStarIcon: XCUIElement = app.icons[""]
    private lazy var firstMovieFromTheSliderDescriptionArrowBack: XCUIElement = app.images["star_icon"]
    private lazy var firstMovieFromTheFirstSliderDate: XCUIElement = app.staticTexts["2021-11-03"]
    private lazy var firstMovieFromTheFirstSliderMovieType: XCUIElement = app.staticTexts["Action, Adventure"]
    private lazy var firstMovieFromTheFirstSliderTime: XCUIElement = app.staticTexts["2hr 36min"]
    private lazy var firstMovieFromTheFirstSliderMovieRating: XCUIElement = app.staticTexts["7.3"]
    private lazy var firstMovieFromTheFirstSliderOverviewTitle: XCUIElement = app.staticTexts["Overview"]
    private lazy var firstMovieFromTheFirstSliderVoteCount: XCUIElement = app.staticTexts["Vote count"]
    private lazy var firstMovieFromTheFirstSliderStatusTitle: XCUIElement = app.staticTexts["Status"]
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
    func tapOnFirstMovie(){
        firstMovieFromTheFirstSlider.tap()
    }
    func thenIShouldSeeMovieTitle(){
        XCTAssertTrue(firstMovieFromTheFirstSliderTitle.exists)
    }
    func thenIShouldSeeMovieDesciption(){
        let predicate = NSPredicate(format: "label LIKE 'The Eternals are a team of ancient aliens who have been living on Earth in secret for thousands of years. When an unexpected tragedy forces them out of the shadows, they are forced to reunite against mankind’s most ancient enemy, the Deviants.'")
        let element = app.staticTexts.element(matching: predicate)
        XCTAssertTrue(element.exists)
    }
    func tapOnArrowBack(){
        firstMovieFromTheSliderDescriptionArrowBack.tap()
    }
    func thenIShouldSeeStarIcon(){
        XCTAssertTrue(firstMovieFromTheSliderDescriptionArrowBack.exists)
    }
    func thenIShouldSeeDate(){
        XCTAssertTrue(firstMovieFromTheFirstSliderDate.exists)
    }
    func thenIShouldSeeMovieType(){
        XCTAssertTrue(firstMovieFromTheFirstSliderMovieType.exists)
    }
    func thenIShouldSeeTime(){
        XCTAssertTrue(firstMovieFromTheFirstSliderTime.exists)
    }
    func thenIShouldSeeMovieRating(){
        XCTAssertTrue(firstMovieFromTheFirstSliderMovieRating.exists)
    }
    func thenIShouldSeeOverviewTitle(){
        XCTAssertTrue(firstMovieFromTheFirstSliderOverviewTitle.exists)
    }
    func thenIShouldSeeVoteCountTitle(){
        XCTAssertTrue(firstMovieFromTheFirstSliderVoteCount.exists)
    }
    func thenIShouldSeeStatusTitle(){
        XCTAssertTrue(firstMovieFromTheFirstSliderStatusTitle.exists)
    }
}
