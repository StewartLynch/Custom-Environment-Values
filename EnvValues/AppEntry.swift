//
// Created for EnvValues
// by  Stewart Lynch on 2023-01-02
// Using Swift 5.0
// Running on macOS 13.1
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

@main
struct AppEntry: App {
    @StateObject var appStoreService = AppStoreService()
    var body: some Scene {
        WindowGroup {
            Group {
                if appStoreService.makePurchase {
                    PurchaseView()
                } else {
                    FirstView()
//                        .environment(\.appColor, .green)
//                        .appColor(.green)
                }
            }
            .environmentObject(appStoreService)
            .appTheme(AppPurchaseTheme.theme(for: appStoreService.receipt))
        }
    }
}
