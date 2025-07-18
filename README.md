# StoreKitTest

A sample Xcode project demonstrating how to implement and test StoreKit 2 subscriptions using SwiftUI. Includes a StoreKit configuration file for local testing, subscription UI, and mock purchase flows.

# How to get the StoreKitManager

You can buy the StoreKitManager package at https://9557279019645.gumroad.com/l/vlsafr

## To install `StoreKitManager` in your Xcode project:

1. Unzip the downloaded file
2. Move the folder to a permanent location
3. In Xcode, go to **File > Add Packages…**
4. Click **“Add Local…”** in the top-right corner
5. Select the folder that contains `Package.swift`
6. Import it in your code:

```swift
import StoreKitManager
⚠️ Important: Don’t delete or move the folder after adding it, or Xcode will lose the reference.

## 🚀 Features

- StoreKit 2 integration
- Subscription purchase and restore flow
- StoreKit configuration for local testing
- SwiftUI interface with pricing buttons
- Support for monthly and yearly options
- Works on macOS, iOS, and iPadOS

---

## 📦 Requirements

- Xcode 16 or later
- IOS 18+
- macOS Ventura or later
- Swift 5.9+
- Apple Developer account (for running on a real device)

---

## 🛠 Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/StoreKitTest.git
   cd StoreKitTest
   ```

2. **Open the project in Xcode**:
   ```
   open StoreKitTest.xcodeproj
   ```

3. **Configure signing**:
   - Go to **Project Navigator > StoreKitTest > Signing & Capabilities**.
   - Choose your **Apple Developer Team**.
   - Optionally, update the **Bundle Identifier** to something unique (e.g., `com.yourname.StoreKitTest`).

4. **Enable StoreKit Testing**:
   - Open the included `.storekit` configuration file (`StoreKitConfig.storekit`).
   - Go to **Scheme > Edit Scheme > Run > Options**, and select the StoreKit Configuration file.
   - This enables local simulation of in-app purchases.

---

## 🧪 Testing Subscriptions

The included `.storekit` file simulates the following products:

- `com.example.app.subscription.monthly` – $2.99/month
- `com.example.app.subscription.yearly` – $24.99/year

You can test:

- Purchase flow
- Restore purchases
- Introductory offers and free trials

---

## 🔐 Notes on Privacy & Security

- This project does **not include any real API keys, entitlements, or backend logic**.
- If you plan to use real products or upload to App Store Connect, make sure to:
  - Update the product IDs.
  - Set up products in **App Store Connect**.
  - Handle real receipt validation (server-side recommended).

---

## 📝 License

This project is available under the MIT License. See [LICENSE](LICENSE) for details.

---

## 🙋‍♂️ Questions?

If you have any questions or suggestions, feel free to [open an issue](https://github.com/your-username/StoreKitTest/issues) or submit a pull request.
