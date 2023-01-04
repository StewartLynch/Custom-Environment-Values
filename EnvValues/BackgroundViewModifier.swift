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

struct WithBackground: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        ZStack {
            Rectangle().fill(color.gradient).opacity(0.3)
                .ignoresSafeArea()
            content
        }
    }
}

extension View {
    func withBackground(color: Color) -> some View {
        modifier(WithBackground(color: color))
    }
}
