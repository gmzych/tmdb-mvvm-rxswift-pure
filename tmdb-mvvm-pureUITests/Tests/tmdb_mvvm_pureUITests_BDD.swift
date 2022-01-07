import XCTest
import Foundation

class tmdb_mvvm_pureUITests_BDD: tmdb_mvvm_pureUITestsBase {
    //1.Rozbic na featury na poszczegolne foldery/elementy np tylko logowanie itd
    // m.in: Logowanie - LoginTests, DiscoveryScreen - DiscoverTests, SearchScreen ScreenTests
    // Zamienic Steps na Screens
    // Screens rozbic na np DiscoveryTests i SearchTests itd
    func testLoginsuccees() {
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        thenIShouldLoginSuccesfully()
    }
    func testLoginFailed(){
        _givenAppIsLaunchedLoginSuccess()
        _loginInputIsTapped(yourUsername:"test")
        _keyboardLoginPopUpIsClosed()
        _passwordInputIsTapped(yourPassword:"test")
        _keyboardPasswordPopUpIsClosed()
        _signInbuttonIsTapped()
        _thenIShouldSeeLoginFailurePopUp()
    }
    // Ostatnie elementy w sliderach zmieniają się, w związku z tym trzeba wymyslic sposob na zastapienie tekstu slidera na coś bardziej trwalszego
    // sprawdzać po indexie slidery
    func testSwipeFirstSlider(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        swipeFirstSlider()
        thenIshouldSeeLastElementOfTheFirstSlider()
    }
    func testSwipeSecondSlider(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        swipeSecondSlider()
        thenIshouldSeeLastElementOfTheSecondSlider()
    }
    func testSwipeThirdSlider(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        swipeThirdSlider()
        thenIshouldSeeLastElementOfTheThirdSlider()
    }
    func testFirstHomePageHeader(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        thenIShouldSeeFirstHomePageHeader()
    }
    func testSecondHomePageHeader(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        thenIshouldSeeSecondHomePageHeader()
    }
    func testThirdHomePageHeader(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        thenIshouldSeeThirdHomePageHeader()
        
    }
    func testSearchPageIsVisible(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        scrollDownToTheBottom()
        tapOnSearchButton()
        thenIShouldSeeSearchInput()
    }
    func testTwoLowerButtons(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        scrollDownToTheBottom()
        tapOnSearchButton()
        tapOnDiscoverButton()
        thenIShouldSeeFirstHomePageHeader()
    }
    func testSearchIconIsVisible(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        scrollDownToTheBottom()
        tapOnSearchButton()
        thenIshouldSeeSearchIcon()
    }
    // sposob na losowe tapniecie elementow z wyszukanych wynikow
    func testSearchEngineMovies(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        scrollDownToTheBottom()
        tapOnSearchButton()
        typeQueryInSearchInput()
        keyboardPopUpSearchEngine()
        thenIShouldSeeMoviesQuerySearchResult()
    }
    func testSearchEnginePeople(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        scrollDownToTheBottom()
        tapOnSearchButton()
        typeQueryInSearchInput()
        keyboardPopUpSearchEngine()
        tapOnPeopleButton()
        thenIShouldSeePeopleQueryResult()
    }
    //Ostatnie elementy w sliderach zmieniają się, w związku z tym trzeba wymyslic sposob na zastapienie tekstu slidera na coś bardziej trwalszego
    func testSwipeInSearchEngineResults(){
        givenAppIsLaunched()
        loginInputIsTapped(yourUsername:"iostest")
        keyboardPopUpLogin()
        passwordInputIsTapped(yourPassword:"test")
        keyboardPopUpPassword()
        iShouldLoginSuccesfully()
        scrollDownToTheBottom()
        tapOnSearchButton()
        typeQueryInSearchInput()
        keyboardPopUpSearchEngine()
        swipeInMoviesQueryResult()
        tapOnPeopleButton()
        swipeInPeopleSearchEngine()
        thenIshouldSeeBottom()
    }
    // usunąc scrolla przy testach do Discovery i Search buttons
}

    



    
    
