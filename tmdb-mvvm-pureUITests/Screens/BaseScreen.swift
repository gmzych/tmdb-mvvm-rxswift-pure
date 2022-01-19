import Foundation
import XCTest

class BaseScreen: XCTest {
    
    var app = XCUIApplication()
    
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

