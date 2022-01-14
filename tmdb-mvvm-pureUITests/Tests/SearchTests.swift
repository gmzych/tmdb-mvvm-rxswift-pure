import XCTest
import Foundation

class SearchScreenTests: BaseTests{
    let searchScreen = SearchScreen()
    func testSearchScreenIsVisible(){
        searchScreen.givenAppIsLaunched()
        searchScreen.loginInputIsTapped(yourUsername:"iostest")
        searchScreen.keyboardPopUpLogin()
        searchScreen.passwordInputIsTapped(yourPassword:"test")
        searchScreen.keyboardPopUpPassword()
        searchScreen.iShouldLoginSuccesfully()
        searchScreen.tapOnSearchButton()
        searchScreen.thenIShouldSeeSearchInput()
    }
    func testSearchIconIsVisible(){
        searchScreen.givenAppIsLaunched()
        searchScreen.loginInputIsTapped(yourUsername:"iostest")
        searchScreen.keyboardPopUpLogin()
        searchScreen.passwordInputIsTapped(yourPassword:"test")
        searchScreen.keyboardPopUpPassword()
        searchScreen.iShouldLoginSuccesfully()
        searchScreen.tapOnSearchButton()
        searchScreen.thenIshouldSeeSearchIcon()
    }
    func testSearchEngineMovies(){
        searchScreen.givenAppIsLaunched()
        searchScreen.loginInputIsTapped(yourUsername:"iostest")
        searchScreen.keyboardPopUpLogin()
        searchScreen.passwordInputIsTapped(yourPassword:"test")
        searchScreen.keyboardPopUpPassword()
        searchScreen.iShouldLoginSuccesfully()
        searchScreen.tapOnSearchButton()
        searchScreen.typeQueryInSearchInput()
        searchScreen.keyboardPopUpSearchEngine()
        searchScreen.thenIShouldSeeMoviesQuerySearchResult()
    }
    func testSearchEnginePeople(){
        searchScreen.givenAppIsLaunched()
        searchScreen.loginInputIsTapped(yourUsername:"iostest")
        searchScreen.keyboardPopUpLogin()
        searchScreen.passwordInputIsTapped(yourPassword:"test")
        searchScreen.keyboardPopUpPassword()
        searchScreen.iShouldLoginSuccesfully()
        searchScreen.tapOnSearchButton()
        searchScreen.typeQueryInSearchInput()
        searchScreen.keyboardPopUpSearchEngine()
        searchScreen.tapOnPeopleButton()
        searchScreen.thenIShouldSeePeopleQueryResult()
    }
    func testSwipeInSearchEngineResults(){
        searchScreen.givenAppIsLaunched()
        searchScreen.loginInputIsTapped(yourUsername:"iostest")
        searchScreen.keyboardPopUpLogin()
        searchScreen.passwordInputIsTapped(yourPassword:"test")
        searchScreen.keyboardPopUpPassword()
        searchScreen.iShouldLoginSuccesfully()
        searchScreen.tapOnSearchButton()
        searchScreen.typeQueryInSearchInput()
        searchScreen.keyboardPopUpSearchEngine()
        searchScreen.swipeInMoviesQueryResult()
        searchScreen.tapOnPeopleButton()
        searchScreen.swipeInPeopleSearchEngine()
        searchScreen.thenIshouldSeeBottom()
      }
}
