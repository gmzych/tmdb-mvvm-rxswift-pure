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
    private lazy var searchIcon: XCUIElement = app.images["search_icon"]
    private lazy var queryResultFirstRecordFromTheMoviesList: XCUIElement = app.staticTexts["Captain Marvel"]
    private lazy var queryResultFirstRecordFromThePeopleList: XCUIElement = app.staticTexts["Elizabeth Marvel"]
    private lazy var queryResultLasttRecordFromTheMoviesList = app.staticTexts["Marvel Rising: Operation Shuri"]
    private lazy var queryResultLastRecordFromThePeopleList = app.staticTexts["Marvel Spencer"]
    private lazy var peopleButton = app.buttons["People"]
    private lazy var moviesButton = app.buttons["Movies"]
    
    func enterLogin(_ login: String){
        loginTextField.tap()
        loginTextField.typeText(login)
    }
    func keyboardPopUpLogin(){
        popUpretunButton.tap()
    }
    func enterPassword(_ password: String){
        passwordTextField.tap()
        passwordTextField.typeText(password)
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
        return searchElementButton.tap()
    }
    func isSearchInputDisplayed() -> Bool{
        _ = searchInput.waitForExistence(timeout: 3)
        return searchInput.exists
    }
    func isSearchIconDisplayed() -> Bool{
        _ = searchIcon.waitForExistence(timeout: 3)
        return searchIcon.exists
    }
    func iShouldSeeSearchInput(){
        XCTAssertTrue(searchIcon.exists)
    }
    func insertTextInSearchInput(){
        searchInput.tap()
        searchInput.typeText("Marvel")
    }
    func closeKeyboard(){
        popUpretunButton.tap()
        sleep(3)
    }
    func isMoviesListDisplayed() -> Bool{
        _ = queryResultFirstRecordFromTheMoviesList.waitForExistence(timeout: 3)
        return queryResultFirstRecordFromTheMoviesList.exists
    }
    func isPeopleListDisplayed() -> Bool{
        _ = queryResultFirstRecordFromThePeopleList.waitForExistence(timeout: 3)
        return queryResultLastRecordFromThePeopleList.exists
    }
    func tapOnPeopleButton(){
        return peopleButton.tap()
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
    func isBottomOfTheListDisplayed() -> Bool{
        app.scrollToElementSwipeUp(element: queryResultLasttRecordFromTheMoviesList)
        return queryResultLastRecordFromThePeopleList.exists
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
