//
// Created for EnvValues
// by  Stewart Lynch on 2023-01-03
// Using Swift 5.0
// Running on macOS 13.1
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct AppThemeKey: EnvironmentKey {
    static var defaultValue: AppPurchaseTheme = AppPurchaseTheme.theme(for: .free)
}

extension EnvironmentValues {
    var appTheme: AppPurchaseTheme {
        get {
            self[AppThemeKey.self]
        }
        set {
            self[AppThemeKey.self] = newValue
        }
    }
}

extension View {
    func appTheme(_ theme: AppPurchaseTheme) -> some View {
        environment(\.appTheme, theme)
    }
}
