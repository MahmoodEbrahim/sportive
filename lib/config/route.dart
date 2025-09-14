import 'package:flutter/material.dart';
import 'package:sportive/features/auth/presentation/forgot/forgot_password_screen.dart';
import 'package:sportive/features/auth/presentation/forgot/password_success_screen.dart';
import 'package:sportive/features/auth/presentation/forgot/phone_verification_screen.dart';
import 'package:sportive/features/auth/presentation/forgot/set_new_password_screen.dart';
import 'package:sportive/features/auth/presentation/view/login_screen.dart';
import 'package:sportive/features/auth/presentation/view/signup_screen.dart';
import 'package:sportive/features/fields/presentation/view/fields_screen.dart';
import 'package:sportive/features/home/presentation/view/bottom_nav_screen.dart';
import 'package:sportive/features/home/presentation/view/home_screen.dart';
import 'package:sportive/features/legal/presentation/view/about_screen.dart';
import 'package:sportive/features/legal/presentation/view/contact_screen.dart';
import 'package:sportive/features/legal/presentation/view/terms_screen.dart';
import 'package:sportive/features/onboarding/onboarding_screen.dart';
import 'package:sportive/features/profile/presentation/view/edit_profile_screen.dart';
import 'package:sportive/features/profile/presentation/view/logout_confirm_screen.dart';
import 'package:sportive/features/profile/presentation/view/personal_screen.dart';
import 'package:sportive/features/profile/presentation/view/profile_screen.dart';
import 'package:sportive/features/profile/presentation/view/settings_screen.dart';
import 'package:sportive/features/start_screen/presentation/start_screen.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String start = '/start';
  static const String login = '/login';
  static const String signup = '/signup';

  // forgot
  static const String forgot = '/forgot';
  static const String phoneVerify = '/phoneVerify';
  static const String setNewPassword = '/setNewPassword';
  static const String passwordSuccess = '/passwordSuccess';

  // profile & account
  static const String profile = '/profile';
  static const String editProfile = '/editProfile';
  static const String logoutConfirm = '/logoutConfirm';
  static const String personal = '/personal';

  // misc
  static const String setting = '/settings';
  static const String terms = '/terms';
  static const String contact = '/contact';
  static const String about = '/about';

  // main
  static const String bottomNav = '/main';
  static const String home = '/home';


  static const String fields = '/fields';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
    // core
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case start:
        return MaterialPageRoute(builder: (_) => const StartScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());

    // forgot flow
      case forgot:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case phoneVerify:
        return MaterialPageRoute(builder: (_) => const PhoneVerificationScreen());
      case setNewPassword:
        return MaterialPageRoute(builder: (_) => const SetNewPasswordScreen());
      case passwordSuccess:
        return MaterialPageRoute(builder: (_) => const PasswordSuccessScreen());

    // profile/account
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case editProfile:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case logoutConfirm:
        return MaterialPageRoute(builder: (_) => const LogoutConfirmScreen());
      case personal:
        return MaterialPageRoute(builder: (_) => const PersonalScreen());

    // settings / legal
      case setting:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case terms:
        return MaterialPageRoute(builder: (_) => const TermsScreen());
      case contact:
        return MaterialPageRoute(builder: (_) => const ContactScreen());
      case about:
        return MaterialPageRoute(builder: (_) => const AboutScreen());

    // main / bottom nav
      case bottomNav:
        return MaterialPageRoute(builder: (_) => const BottomNavScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case fields:
        return MaterialPageRoute(builder: (_) =>  FieldsScreen());


      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No route defined")),
          ),
        );
    }
  }
}
