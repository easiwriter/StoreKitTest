//
//  ContentView.swift
//  StoreKitTest
//
//  Created by Keith Lander on 18/05/2025.
//

import SwiftUI
import StoreKitManager

struct ContentView: View {
    @StateObject var purchaseManager = StoreKitPurchaseManager.shared
    @StateObject var subscriptionViewModel = SubscriptionViewModelFactory.makeDefault()
    @State var showSubscriptionSheet = true
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .fullScreenCover(isPresented: $showSubscriptionSheet, onDismiss: {
            Task {
                // ✅ Subscription manager is configured via the factory already
                let subscriptionStatuses = await StoreKitPurchaseManager.shared.checkSubscriptionStatuses()
                let isSubscribed = subscriptionStatuses.values.contains(true)
                if isSubscribed {
                    showSubscriptionSheet = true
                }
                else {
                    Image(systemName: "globe")
                    Text("Hello, world!")
                }
            }
        }) {
            SubscriptionView(viewModel: subscriptionViewModel, isPresented: $showSubscriptionSheet)
        }

    }
}

#Preview {
    ContentView()
}
