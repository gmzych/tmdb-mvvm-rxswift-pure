import XCTest
import Foundation


extension tmdb_mvvm_pureUITests_BDD{
    func scrollDownToTheBottom(){
        app.scrollToElementSwipeUp(element: HomePageScreen.thirdHomePageHeader.element)
    }
    func tapOnSearchButton(){
        HomePageScreen.searchElementButton.element.tap()
    }
    func tapOnDiscoverButton(){
        HomePageScreen.discoverElementButtton.element.tap()
    }
    func thenIShouldSeeSearchInput(){
        XCTAssertTrue(SearchPageScreen.searchInput.element.exists)
    }
    func thenIshouldSeeSearchIcon(){
        XCTAssertTrue(SearchPageScreen.searchIcon.element.exists)
    }
    func iShouldSeeSearchInput(){
        XCTAssertTrue(SearchPageScreen.searchIcon.element.exists)
    }
    func typeQueryInSearchInput(){
        SearchPageScreen.searchInput.element.tap()
        SearchPageScreen.searchInput.element.typeText("Marvel")
    }
    func keyboardPopUpSearchEngine(){
        SearchPageScreen.popUpretunButton.element.tap()
        sleep(3)
    }
    func thenIShouldSeeMoviesQuerySearchResult(){
        XCTAssertTrue(SearchPageScreen.queryResultFirstRecordFromTheMoviesList.element.exists)
        
    }
    func thenIShouldSeePeopleQueryResult(){
        XCTAssertTrue(SearchPageScreen.queryResultFirstRecordFromThePeopleList.element.exists)
    }
    func tapOnPeopleButton(){
        SearchPageScreen.peopleButton.element.tap()
    }
    func tapOnMoviesButton(){
        SearchPageScreen.moviesButton.element.tap()
    }
    func swipeInMoviesQueryResult(){
        app.swipeUp()
    }
    func swipeInPeopleSearchEngine(){
        app.swipeUp()
    }
    func thenIshouldSeeBottom(){
        app.scrollToElementSwipeUp(element: SearchPageScreen.queryResultLasttRecordFromTheMoviesList.element)
        XCTAssertTrue(SearchPageScreen.queryResultLastRecordFromThePeopleList.element.exists)
    }
}
