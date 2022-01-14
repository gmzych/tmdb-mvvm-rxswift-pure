import XCTest
import Foundation

class SearchScreen: BaseScreen {
    
    private lazy var welcomeMessage: XCUIElement = app.staticTexts["Welcome"]
    private lazy var loginTextField: XCUIElement = app.textFields["Your username"]
    private lazy var passwordTextField: XCUIElement = app.secureTextFields["Your password"]
    private lazy var signInButton: XCUIElement = app.buttons["Sign in"]
    private lazy var popUpretunButton: XCUIElement = app.buttons["return"]
    private lazy var firstHomePageHeader: XCUIElement = app.staticTexts["Popular movies"]
    private lazy var secondHomePageHeader: XCUIElement = app.staticTexts["Trending people"]
    private lazy var thirdHomePageHeader: XCUIElement = app.staticTexts["TV shows"]
    private lazy var searchElementButton: XCUIElement = app.buttons["Search"]
    private lazy var searchInput: XCUIElement = app.textFields["Search"]
    private lazy var searchIcon: XCUIElement = app.textFields["search_icon"]
    private lazy var queryResultFirstRecordFromTheMoviesList: XCUIElement = app.staticTexts["Captain Marvel"]
    private lazy var queryResultFirstRecordFromThePeopleList: XCUIElement = app.staticTexts["Elizabeth Marvel"]
    private lazy var queryResultLasttRecordFromTheMoviesList = app.staticTexts["Marvel Rising: Operation Shuri"]
    private lazy var queryResultLastRecordFromThePeopleList = app.staticTexts["Kimberly Marvel"]
    private lazy var peopleButton = app.buttons["People"]
    private lazy var moviesButton = app.buttons["Movies"]
    
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
    func thenIShouldLoginSuccesfully(){
        signInButton.tap()
        sleep(3)
        XCTAssertTrue(firstHomePageHeader.exists)
    }
    func iShouldLoginSuccesfully(){
        signInButton.tap()
        sleep(3)
        XCTAssertTrue(firstHomePageHeader.exists)
    }
    func scrollDownToTheBottom(){
        app.scrollToElementSwipeUp(element: thirdHomePageHeader)
    }
    func tapOnSearchButton(){
        searchElementButton.tap()
    }
    func thenIShouldSeeSearchInput(){
        XCTAssertTrue(searchInput.exists)
    }
    func thenIshouldSeeSearchIcon(){
        XCTAssertTrue(searchIcon.exists)
    }
    func iShouldSeeSearchInput(){
        XCTAssertTrue(searchIcon.exists)
    }
    func typeQueryInSearchInput(){
        searchInput.tap()
        searchInput.typeText("Marvel")
    }
    func keyboardPopUpSearchEngine(){
        popUpretunButton.tap()
        sleep(3)
    }
    func thenIShouldSeeMoviesQuerySearchResult(){
        XCTAssertTrue(queryResultFirstRecordFromTheMoviesList.exists)
    }
    func thenIShouldSeePeopleQueryResult(){
        XCTAssertTrue(queryResultFirstRecordFromThePeopleList.exists)
    }
    func tapOnPeopleButton(){
        peopleButton.tap()
    }
    func tapOnMoviesButton(){
        moviesButton.tap()
    }
    func swipeInMoviesQueryResult(){
        app.swipeUp()
    }
    func swipeInPeopleSearchEngine(){
        app.swipeUp()
    }
    func thenIshouldSeeBottom(){
        app.scrollToElementSwipeUp(element: queryResultLasttRecordFromTheMoviesList)
        XCTAssertTrue(queryResultLastRecordFromThePeopleList.exists)
    }
}
