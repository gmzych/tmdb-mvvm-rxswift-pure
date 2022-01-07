import XCTest
import Foundation


extension tmdb_mvvm_pureUITests_BDD{
    func swipeFirstSlider(){
        app.scrollToElementSwipeLeft(element: HomePageScreen.lastElementOfFirstSlider.element)
    }
    func thenIshouldSeeLastElementOfTheFirstSlider()
    {
        XCTAssertTrue(HomePageScreen.lastElementOfFirstSlider.element.exists)
    }
    func swipeSecondSlider(){
        app.swipeUp(velocity: 30)
        app.scrollToElementSwipeLeft(element: HomePageScreen.lastElementOfSecondSlider.element)
    }
    func thenIshouldSeeLastElementOfTheSecondSlider(){
        XCTAssertTrue(HomePageScreen.lastElementOfSecondSlider.element.exists)
    }
    func swipeThirdSlider(){
        app.swipeUp()
        // wybrac ostatni slider z dostepnych dwoch na tym widoku
        if HomePageScreen.thirdHomePageHeader.element.exists{
                
                app.scrollToElementSwipeLeft(element: HomePageScreen.lastElementOfThirdSLider.element)
        }
        else
        {
            app.swipeUp()
        }
    }
    func thenIshouldSeeLastElementOfTheThirdSlider(){
        XCTAssertTrue(HomePageScreen.lastElementOfThirdSLider.element.exists)
    }
}
extension XCUIElement {
    func scrollToElementSwipeLeft(element: XCUIElement) {
        while !element.visibleSwipeLeft() {
            swipeLeft()
        }
    }
    func visibleSwipeLeft() -> Bool {
        guard self.exists && !self.frame.isEmpty else { return false }
        return XCUIApplication().windows.element(boundBy: 0).frame.contains(self.frame)
    }

}
