import XCTest
import Foundation


extension tmdb_mvvm_pureUITests_BDD{
    func thenIShouldSeeFirstHomePageHeader(){
        XCTAssertTrue(HomePageScreen.firstHomePageHeader.element.exists)
    }
    func thenIshouldSeeSecondHomePageHeader(){
        XCTAssertTrue(HomePageScreen.secondHomePageHeader.element.exists)
    }
    func thenIshouldSeeThirdHomePageHeader(){
        app.scrollToElementSwipeUp(element: HomePageScreen.thirdHomePageHeader.element)
        XCTAssertTrue(HomePageScreen.thirdHomePageHeader.element.exists)
    }
}
extension XCUIElement {
    func scrollToElementSwipeUp(element: XCUIElement) {
        while !element.visibleSwipeUp() {
            swipeUp()
        }
    }
    func visibleSwipeUp() -> Bool {
        guard self.exists && !self.frame.isEmpty else { return false }
        return XCUIApplication().windows.element(boundBy: 0).frame.contains(self.frame)
    }
}
