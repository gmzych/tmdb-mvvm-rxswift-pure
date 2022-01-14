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
}
