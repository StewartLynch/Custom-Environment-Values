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


import Foundation

enum Receipt: String {
    case free,  premium, premiumPlus
}

class AppStoreService: ObservableObject {
    
    let receiptURL = URL.documentsDirectory.appending(path: "receipt.text")
    @Published var receipt: Receipt = .free
    @Published var makePurchase: Bool = false
    
    init() {
        retreivePurchase()
    }
    
    func retreivePurchase() {
        if FileManager().fileExists(atPath: receiptURL.path) {
            do {
                let receiptData = try Data(contentsOf: receiptURL)
                let receiptString = String(decoding: receiptData, as: UTF8.self)
                if let receipt = Receipt(rawValue: receiptString) {
                    self.receipt = receipt
                } else {
                    clearPurchase()
                }
            } catch {
                print(error.localizedDescription)
                self.receipt = .free
            }
        } else {
            self.receipt = .free
        }
    }
    
    func makePurchase(receipt: Receipt) {
        self.receipt = receipt
        do {
            let data = Data(receipt.rawValue.utf8)
            try data.write(to: receiptURL)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func clearPurchase() {
        try? FileManager().removeItem(at: receiptURL)
        self.receipt = .free
    }
}
