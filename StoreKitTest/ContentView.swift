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
    @State var showSubscriptionSheet = false
    
    var body: some View {
        if !showSubscriptionSheet {
            Text("StoreKitManager Demo").font(.largeTitle)
                .padding(EdgeInsets(top: 36, leading: 0, bottom: 0, trailing: 0))
            Spacer()
            Button(action: {showSubscriptionSheet = true}) {
                HStack {
                    Image(systemName: "cart")
                        .foregroundColor(.red)
                        .imageScale(.large)
                    Text("Subscribe").font(.title)
                }
            }
            Spacer()
        }
        else {
            VStack {
                EmptyView()
            }
            .padding()
            .sheet(isPresented: $showSubscriptionSheet, onDismiss: {
                Task {
                    // ✅ Subscription manager is configured via the factory already
                    let subscriptionStatuses = await StoreKitPurchaseManager.shared.checkSubscriptionStatuses()
                    let isSubscribed = subscriptionStatuses.values.contains(true)
                    if isSubscribed {
                        showSubscriptionSheet = true
                    }
                }
            }) {
                SubscriptionView(viewModel: subscriptionViewModel, isPresented: $showSubscriptionSheet)
            }
        }
        
    }
}
