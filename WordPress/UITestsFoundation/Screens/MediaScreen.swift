import ScreenObject
import XCTest

public class MediaScreen: ScreenObject {

    public init(app: XCUIApplication = XCUIApplication()) throws {
        try super.init(
            expectedElementGetters: [ { $0.collectionViews["MediaCollection"] } ],
            app: app,
            waitTimeout: 7
        )
    }

    static func isLoaded() -> Bool {
        (try? MediaScreen().isLoaded) ?? false
    }
}
