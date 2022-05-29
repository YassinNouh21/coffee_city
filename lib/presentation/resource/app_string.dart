import 'package:coffee_city/presentation/resource/time_manager.dart';

class AppStrings {
  static const String noRouteFound = 'No route found';
}

class SignInAppStrings {
  static const String signIn = 'Sign in';
  static const String welcome = 'Welcome back';
  static const String email = 'Email address';
  static const String password = 'Password';
  static const String forget = 'Forgot Password?';
  static const String newMember = 'New member?';
  static const String signUp = 'Sign up';
}

class RegisterAppStrings {
  static const String signUp = 'Sign up';
  static const String createAccount = 'Create an account here';
  static const String username = 'Username';
  static const String mobileNumber = 'Mobile Number';
  static const String emailAddress = 'Email address';
  static const String password = 'Password';
  static const String terms = 'By signing up you agree with our Terms of Use';
  static const String alreadyMember = 'Already a member?';
  static const String signIn = 'Sign in';
}

class ForgotAppString {
  static const String forgotPassword = 'Forgot Password?';
  static const String enterEmail = 'Enter your email address';
  static const String email = 'Enter your email address';
}

class VerficationAppString {
  static const String verify = 'Verification';
  static const String otp = 'Enter the OTP code we sent you';
}

class HomeAppString {
  static const String goodMorning = 'Good morning';
  static const String goodAfternoon = 'Good afternoon';
  static const String goodEvening = 'Good evening';
  static const String goodNight = 'Good night';
  static String greeting = Time().getStringToTime();
  static const String today = 'Top Today';
}

class AppBottomNavigationBarString {
  static const String home = 'Home';
  static const String menu = 'Menu';
  static const String order = 'Order';
  static const String reward = 'Reword';
}

class HomeString {
  static const String favorite = 'Your favorite';
}
