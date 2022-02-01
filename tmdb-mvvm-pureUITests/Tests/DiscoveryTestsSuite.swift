import XCTest
import Foundation

class DiscoveryScreenTestsSuite: BaseTestsSuite{
    let discoveryScreen = DiscoveryScreen()
    
    func testSwipeFirstSlider(){
        discoveryScreen.loginUserWith(UserData.login,UserData.password)
        discoveryScreen.swipeFirstSlider()
        XCTAssertTrue(discoveryScreen.islastElementOfTheFirstSliderIsDisplayed(),
                        "Last element of the first slider is not displayed")
    }
    func testSwipeSecondSlider(){
        discoveryScreen.loginUserWith(UserData.login,UserData.password)
        discoveryScreen.swipeSecondSlider()
        XCTAssertTrue(discoveryScreen.islastElementOfTheSecondSliderIsDisplayed(),
                        "Last element of the second slider is not displayed")
    }
    func testSwipeThirdSlider(){
        discoveryScreen.loginUserWith(UserData.login,UserData.password)
        discoveryScreen.swipeThirdSlider()
        XCTAssertTrue(discoveryScreen.isLastElementOfTheThirdSliderDisplayed(),
                        "Last element of the third slider is not displayed")
    }
    func testFirstHeader(){
        discoveryScreen.loginUserWith(UserData.login,UserData.password)
        XCTAssertTrue(discoveryScreen.isFirstHeaderDisplayed(),
                                "First header is not displayed.")
    }
    func testSecondHeader(){
        discoveryScreen.loginUserWith(UserData.login,UserData.password)
        XCTAssertTrue(discoveryScreen.isSecondHeaderDisplayed(),
                                "Second header is not displayed.")
    }
    func testThirdHeader(){
        discoveryScreen.loginUserWith(UserData.login,UserData.password)
        XCTAssertTrue(discoveryScreen.isThirdHeaderDisplayed(),
                                "Third header is not disaplyed")
    }
    func testTwoLowerButtons(){
        discoveryScreen.loginUserWith(UserData.login,UserData.password)
        discoveryScreen.tapOnSearchButton()
        discoveryScreen.tapOnDiscoverButton()
        XCTAssertTrue(discoveryScreen.isFirstHeaderDisplayed(),
                                "First header is not displayed.")
    }
}
