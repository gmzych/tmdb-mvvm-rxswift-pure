import XCTest
import Foundation

class SearchScreenTestsSuite: BaseTestsSuite{
    let searchScreen = SearchScreen()
    
    func testSearchScreenIsVisible(){
        searchScreen.loginUserWith(UserData.login,UserData.password)
        searchScreen.tapOnSearchButton()
        XCTAssertTrue(searchScreen.isSearchInputDisplayed(),
                            "Search input is not displayed.")
    }
    func testSearchIconIsVisible(){
        searchScreen.loginUserWith(UserData.login,UserData.password)
        searchScreen.tapOnSearchButton()
        XCTAssertTrue(searchScreen.isSearchIconDisplayed(),
                            "Seach icon is not displayed.")
    }
    func testSearchEngineMovies(){
        searchScreen.loginUserWith(UserData.login,UserData.password)
        searchScreen.tapOnSearchButton()
        searchScreen.insertTextInSearchInput()
        searchScreen.closeKeyboard()
        XCTAssertTrue(searchScreen.isMoviesListDisplayed(),
                            "Movie list is not displayed.")
    }
    func testSearchEnginePeople(){
        searchScreen.loginUserWith(UserData.login,UserData.password)
        searchScreen.tapOnSearchButton()
        searchScreen.insertTextInSearchInput()
        searchScreen.closeKeyboard()
        searchScreen.tapOnPeopleButton()
        XCTAssertTrue(searchScreen.isPeopleListDisplayed(),
                            "People list is not displayed")
    }
    func testSwipeInSearchEngineResults(){
        searchScreen.loginUserWith(UserData.login,UserData.password)
        searchScreen.tapOnSearchButton()
        searchScreen.insertTextInSearchInput()
        searchScreen.closeKeyboard()
        searchScreen.swipeInMoviesQueryResult()
        searchScreen.tapOnPeopleButton()
        searchScreen.swipeInPeopleSearchEngine()
        XCTAssertTrue(searchScreen.isBottomOfTheListDisplayed(),
                            "Bottom of the list is not displayed.")
      }
}
