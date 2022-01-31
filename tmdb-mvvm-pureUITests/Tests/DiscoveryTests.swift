import XCTest
import Foundation

class DiscoveryScreenTests: BaseTests{
    let discoveryScreen = DiscoveryScreen()
    func testSwipeFirstSlider(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.swipeFirstSlider()
        discoveryScreen.thenIshouldSeeLastElementOfTheFirstSlider()
    }
    func testSwipeSecondSlider(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.swipeSecondSlider()
        discoveryScreen.thenIshouldSeeLastElementOfTheSecondSlider()
    }
    func testSwipeThirdSlider(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.swipeThirdSlider()
        discoveryScreen.thenIshouldSeeLastElementOfTheThirdSlider()
    }
    func testFirstHeader(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.thenIShouldSeeFirstHomePageHeader()
    }
    func testSecondHeader(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.thenIshouldSeeSecondHomePageHeader()
    }
    func testThirdHeader(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.thenIshouldSeeThirdHomePageHeader()
        
    }
    func testTwoLowerButtons(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnSearchButton()
        discoveryScreen.tapOnDiscoverButton()
        discoveryScreen.thenIShouldSeeFirstHomePageHeader()
    }
    func testMovieDescriptionArrowBack(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.tapOnArrowBack()
        discoveryScreen.thenIShouldSeeFirstHomePageHeader()
    }
    func testMovieDescriptionTitle(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.thenIShouldSeeMovieTitle()
    }
    func testMovieDescriptionDate(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.thenIShouldSeeDate()
    }
    func testMovieDescriptionMovieType(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.thenIShouldSeeMovieType()
    }
    func testMovieDescriptionTime(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.thenIShouldSeeTime()
    }
    func testMovieDescriptionStarIcon(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.thenIShouldSeeStarIcon()
    }
    func testMovieDescriptionRating(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.thenIShouldSeeMovieRating()
    }
    func testMovieDescriptionOverview(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.thenIShouldSeeOverviewTitle()
    }
    func testMovieDescription(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.thenIShouldSeeMovieDesciption()
    }
    func testMovieDescriptionVoteCount(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.thenIShouldSeeVoteCountTitle()
    }
    func testMovieDescriptionStatusTile(){
        discoveryScreen.givenAppIsLaunched()
        discoveryScreen.loginInputIsTapped(yourUsername:"iostest")
        discoveryScreen.keyboardPopUpLogin()
        discoveryScreen.passwordInputIsTapped(yourPassword:"test")
        discoveryScreen.keyboardPopUpPassword()
        discoveryScreen.iShouldLoginSuccesfully()
        discoveryScreen.tapOnFirstMovie()
        discoveryScreen.thenIShouldSeeStatusTitle()
    }
}
