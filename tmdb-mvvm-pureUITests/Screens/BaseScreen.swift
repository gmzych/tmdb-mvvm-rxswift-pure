import Foundation
import XCTest

class BaseScreen: XCTest {
    
    var app = XCUIApplication()
    
    func elementIsWithinWindow(element: XCUIElement) -> Bool {
        guard element.exists && !element.frame.isEmpty && element.isHittable else { return false }
        return XCUIApplication().windows.element(boundBy: 0).frame.contains(element.frame)
    }
    func scrollDown(times: Int = 1) {
        let mainWindow = app.windows.firstMatch
        let topScreenPoint = mainWindow.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.05))
        let bottomScreenPoint = mainWindow.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.90))
        for _ in 0..<times {
            bottomScreenPoint.press(forDuration: 0, thenDragTo: topScreenPoint)
        }
    }
    func scrollUp(times: Int = 1) {
        let mainWindow = app.windows.firstMatch
        let topScreenPoint = mainWindow.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.05))
        let bottomScreenPoint = mainWindow.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.90))
        for _ in 0..<times {
            topScreenPoint.press(forDuration: 0, thenDragTo: bottomScreenPoint)
        }
    }
    func scrollUntilElementAppears(element: XCUIElement, threshold: Int = 10) {
        var iteration = 0

        while !elementIsWithinWindow(element: element) {
            guard iteration < threshold else { break }
            scrollDown()
            iteration += 1
        }

        if !elementIsWithinWindow(element: element) {
            scrollDown(times: threshold)
        }

        while !elementIsWithinWindow(element: element) {
            guard iteration > 0 else { break }
            scrollUp()
            iteration -= 1
        }
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
extension XCUIElement
{
    enum direction : Int {
        case Up, Down, Left, Right
    }
    func gentleSwipe(_ direction : direction) {
        let half : CGFloat = 0.1
        let adjustment : CGFloat = 0.1
        let pressDuration : TimeInterval = 0.01

        let lessThanHalf = half - adjustment
        let moreThanHalf = half + adjustment

        let centre = self.coordinate(withNormalizedOffset: CGVector(dx: half, dy: half))
        let aboveCentre = self.coordinate(withNormalizedOffset: CGVector(dx: half, dy: lessThanHalf))
        let belowCentre = self.coordinate(withNormalizedOffset: CGVector(dx: half, dy: moreThanHalf))
        let leftOfCentre = self.coordinate(withNormalizedOffset: CGVector(dx: lessThanHalf, dy: half))
        let rightOfCentre = self.coordinate(withNormalizedOffset: CGVector(dx: moreThanHalf, dy: half))

        switch direction {
        case .Up:
            centre.press(forDuration: pressDuration, thenDragTo: aboveCentre)
            break
        case .Down:
            centre.press(forDuration: pressDuration, thenDragTo: belowCentre)
            break
        case .Left:
            centre.press(forDuration: pressDuration, thenDragTo: leftOfCentre)
            break
        case .Right:
            centre.press(forDuration: pressDuration, thenDragTo: rightOfCentre)
            break
        }
    }
}





