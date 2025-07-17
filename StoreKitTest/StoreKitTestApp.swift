//
//  StoreKitTestApp.swift
//  StoreKitTest
//
//  Created by Keith Lander on 18/05/2025.
//

import SwiftUI
import StoreKitManager

@main
struct StoreKitTestApp: App {
    
    init() {
        StoreKitPurchaseManager.shared.startListeningForTransactions()
        Task {
            await StoreKitPurchaseManager.shared.loadProducts()
        }
        let path = Bundle.main.path(forResource: "SubscriptionConfig_en", ofType: "json")
        print("Path to config: \(path ?? "❌ Not found")")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
