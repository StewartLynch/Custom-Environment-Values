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

struct AppPurchaseTheme {
    var name: String
    var primary: Color
    var secondary: Color
    
    static func theme(for receipt: Receipt) -> AppPurchaseTheme {
        switch receipt {
        case .free:
            return AppPurchaseTheme(name: "Free Version", primary: .red, secondary: .orange)
        case .premium:
            return AppPurchaseTheme(name: "Premium Version", primary: .blue, secondary: .green)
        case .premiumPlus:
            return AppPurchaseTheme(name: "Premium Plus Version", primary: .purple, secondary: .indigo)
        }
    }
}
