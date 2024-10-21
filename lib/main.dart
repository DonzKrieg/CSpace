import "package:flutter/material.dart";
import "package:space/pages/category_page.dart";
import "package:space/pages/home_page.dart";
import "package:space/pages/onboarding_page.dart";
import "package:space/pages/search_page.dart";
import "package:space/pages/search_result_page.dart";
import "package:space/pages/sign_in_page.dart";
import "package:space/pages/splash_page.dart";
import "package:space/pages/wishlist_page.dart";
import "package:space/theme.dart";

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/homepage': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/search-result': (context) => SearchResultPage(),
        '/category': (context) => CategoryPage(),
        '/wishlist': (context) => WishlistPage(),
      },
    );
  }
}
