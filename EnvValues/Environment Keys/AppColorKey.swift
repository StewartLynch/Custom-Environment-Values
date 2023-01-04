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

struct AppColorKey: EnvironmentKey {
    static var defaultValue: Color = .red
}

extension EnvironmentValues {
    var appColor: Color {
        get {
            self[AppColorKey.self]
        }
        set {
            self[AppColorKey.self] = newValue
        }
    }
}

extension View {
    func appColor(_ color: Color) -> some View {
        environment(\.appColor, color)
    }
}
