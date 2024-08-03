class Endpoints {
  Endpoints._();

  static const String baseUrl = 'https://fakestoreapi.com';
  static const int receiveTimeout = 15000;

  static const int connectionTimeout = 15000;
  static const String createAccount = '/users';
  static const auth = '/auth/login';
  static const allProducts = '/products';
  static const String sendEmailOtp = '/users/otp/send/email';
  static const String sendPhoneOtp = 'users/otp/send/phone';
  static const String onboarding = '/user/profile';
  static const String onboardingStageTwo = '/user/profile/update';
  static const String validateOtp = '/users/otp/validate/phone';
  static const String validatePhoneOtp = '/users/otp/validate/phone';
  static const String restPassword = '/users/password/reset';
  static const String switchAccountType = 'users/change/account/type';
  static const String updateUserImage = '/users/update/image';
  static const String updateUser = '/users/update/profile';
  static const String logout = '/users/out';
  static const String getUser = '/users/get/get/one';
}
