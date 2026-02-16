# 👟 Nike Shop Flutter App


A modern, enterprise-level, responsive, and adaptive Nike Shop e-commerce app built with Flutter using the MVVM (Model-View-ViewModel) architecture and Firebase backend.

---

## ✨ Features
- MVVM architecture for clean code separation
- Responsive & adaptive UI (mobile, tablet, desktop)
- Modular, scalable folder structure
- State management with Provider & GetIt DI
- Navigation with GoRouter
- Firebase Auth, Firestore, Storage, Analytics
- Advanced e-commerce modules: catalog, cart, checkout, orders, profile, search, wishlist, admin
- Modern, beautiful UX with Google Fonts, Lottie, Shimmer, SVG
- Theming and easy customization

---

## 📁 Project Structure
```
lib/
	core/           # App-wide utilities, theme, constants, services (Firebase, DI, Auth, Firestore, Storage)
	data/           # Data models, repositories, datasources
	domain/         # Business logic: entities, usecases
	presentation/   # UI: views, viewmodels, routes, resources
		views/
			home/       # Home screen UI
			catalog/    # Product catalog
			cart/       # Shopping cart
			checkout/   # Checkout flow
			orders/     # Order history
			profile/    # User profile
			search/     # Search
			wishlist/   # Wishlist
			admin/      # Admin dashboard
			auth/       # Auth screens (login, register)
			widgets/    # Shared widgets
		viewmodels/   # ViewModels for each feature
		routes/       # App navigation
		resources/    # Images, icons
	main.dart       # App entry point
```

---

## 🚀 Getting Started
1. **Clone the repo:**
	 ```sh
	 git clone <your-repo-url>
	 cd nike_shop
	 ```
2. **Install dependencies:**
	 ```sh
	 flutter pub get
	 ```
3. **Run the app:**
	 ```sh
	 flutter run
	 ```

---

## 🛠️ Tech Stack
- [Flutter](https://flutter.dev/)
- [Provider](https://pub.dev/packages/provider)
- [GetIt](https://pub.dev/packages/get_it)
- [GoRouter](https://pub.dev/packages/go_router)
- [Flutter ScreenUtil](https://pub.dev/packages/flutter_screenutil)
- [Dio](https://pub.dev/packages/dio)
- [Freezed](https://pub.dev/packages/freezed)
- [Firebase Core](https://pub.dev/packages/firebase_core)
- [Firebase Auth](https://pub.dev/packages/firebase_auth)
- [Cloud Firestore](https://pub.dev/packages/cloud_firestore)
- [Firebase Storage](https://pub.dev/packages/firebase_storage)
- [Firebase Analytics](https://pub.dev/packages/firebase_analytics)
- [Lottie](https://pub.dev/packages/lottie)
- [Shimmer](https://pub.dev/packages/shimmer)
- [Google Fonts](https://pub.dev/packages/google_fonts)
- [Flutter SVG](https://pub.dev/packages/flutter_svg)
- [Flutter Staggered Grid View](https://pub.dev/packages/flutter_staggered_grid_view)
- [Cached Network Image](https://pub.dev/packages/cached_network_image)

---

## 📱 Screenshots
> _Add your app screenshots here_

---

## 📄 License
MIT

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
