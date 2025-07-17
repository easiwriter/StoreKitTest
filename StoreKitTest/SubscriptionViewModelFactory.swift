//
//  SubscriptionViewModelFactory.swift
//  VroomLog
//
//  Created by Keith Lander on 25/05/2025.
//
import Foundation
import StoreKitManager

struct SubscriptionViewModelFactory {
    @MainActor static func makeDefault() -> SubscriptionViewModel {
        let localizationBundle = Bundle.main
        let subscriptionLocalizer = SubscriptionLocalizer(bundle: localizationBundle)
        let subscriptionConfig = SubscriptionConfigLoader.loadLocalizedConfig()
            ?? SubscriptionPageConfig(
                title: "",
                subtitle: "",
                trialText: nil,
                featureSections: [],
                productGroups: [],
                showRestoreButton: false)

        return SubscriptionViewModel(config: subscriptionConfig, localizer: subscriptionLocalizer)
    }
}

//struct SubscriptionViewModelFactory {
//    @MainActor static func makeDefault() -> SubscriptionViewModel {
//        let localizationBundle = Bundle.main
//        let subscriptionLocalizer = SubscriptionLocalizer(bundle: localizationBundle)
//        let subscriptionConfig = SubscriptionConfigLoader.loadLocalizedConfig() ?? SubscriptionPageConfig(
//            title: "",
//            subtitle: "",
//            trialText: nil,
//            featureSections: [],
//            productGroups: [],
//            showRestoreButton: false
//        )
//        
//        // Collect all productIDs from the config
//        let productIDs = subscriptionConfig.productGroups
//            .flatMap { $0.products }
//            .flatMap { $0.productIDs }
//        
//        return SubscriptionViewModel(config: subscriptionConfig,
//                                     localizer: subscriptionLocalizer)
//    }
//}
