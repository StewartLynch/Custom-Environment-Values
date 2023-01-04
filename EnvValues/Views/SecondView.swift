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

struct SecondView: View {
    @Environment(\.appTheme) var appTheme
    var body: some View {
        VStack {
            Text("Just another view")
            GroupBox {
                Text("Second View Group box")
                
            }
            .environment(\.colorScheme, .dark)
        }
        .withBackground(color: appTheme.secondary)
        .navigationTitle("Second View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SecondView()
        }
    }
}
