import XCTest
import Foundation


// Przeniesc do folderu w Screen - LoginScreen
// zmienne prywatne na np XCUAplications.
// zrobic zamiast case zmienne prywatne, w np w jednej klasie Login, Search,Discover itd
enum LoginPageScreen: String{
    case welcomeMessage = "Welcome"
    case loginTextField = "Your username"
    case passwordTextField = "Your password"
    case signInButton = "Sign in"
    case popUpretunButton = "return"
    case loginFailurePopUp = "Login failed"
    var element: XCUIElement {
        switch self{
        case .signInButton, .popUpretunButton:
            return XCUIApplication().buttons[self.rawValue]
        case .welcomeMessage:
            return XCUIApplication().staticTexts[self.rawValue]
        case .loginTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .passwordTextField:
            return XCUIApplication().secureTextFields[self.rawValue]
        case .loginFailurePopUp:
            return XCUIApplication().alerts.staticTexts[self.rawValue]
        }
    }
}
// Zmienic na Discovery Screen poniewaz jestem na Discovery Screen
// Screen nie Page
// hermetyzacja, solid, kiss, dry - do przeczytania
enum HomePageScreen: String{
    case firstHomePageHeader = "Popular movies"
    case secondHomePageHeader = "Trending people"
    case thirdHomePageHeader = "TV shows"
    case lastElementOfFirstSlider = "2021-12-24"
    case lastElementOfSecondSlider = "Peyton List"
    case lastElementOfThirdSLider = "1983-09-19"
    case searchElementButton = "Search"
    case discoverElementButtton = "Discover"
    var element: XCUIElement{
            switch self{
            case .firstHomePageHeader, .secondHomePageHeader, .thirdHomePageHeader, .lastElementOfFirstSlider, .lastElementOfSecondSlider, .lastElementOfThirdSLider:
                return XCUIApplication().staticTexts[self.rawValue]
            case .searchElementButton, .discoverElementButtton:
                return XCUIApplication().buttons[self.rawValue]
            }
        }
}
// Zmienic na Search Screen poniewaz jestem na Discovery Screen
enum SearchPageScreen: String{
    case searchInput = "Search"
    case searchIcon = "search_icon"
    case popUpretunButton = "return"
    case queryResultFirstRecordFromTheMoviesList = "Captain Marvel"
    case queryResultFirstRecordFromThePeopleList = "Elizabeth Marvel"
    case queryResultLasttRecordFromTheMoviesList = "Marvel Rising: Operation Shuri"
    case queryResultLastRecordFromThePeopleList = "Kimberly Marvel"
    case peopleButton = "People"
    case moviesButton = "Movies"
    var element: XCUIElement{
            switch self{
            case .searchInput:
                return XCUIApplication().textFields[self.rawValue]
            case .searchIcon:
                return XCUIApplication().images[self.rawValue]
            case .popUpretunButton, .peopleButton, .moviesButton:
                return XCUIApplication().buttons[self.rawValue]
            case .queryResultFirstRecordFromTheMoviesList,.queryResultFirstRecordFromThePeopleList,
                .queryResultLasttRecordFromTheMoviesList,
                .queryResultLastRecordFromThePeopleList:
                return XCUIApplication().staticTexts[self.rawValue]
            }
    }
}
