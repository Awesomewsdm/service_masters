import "package:service_masters/common/barrels.dart";

const tPrimaryColor = Color(0xFF14AA52);
const tSecondaryColor = Color(0xFF9DA49E);
const tOrangeColor = Color(0xFFFFD54F);
const tAccentColor = Color(0xFF001BFF);
const tBlackColor = Colors.black;
const tAshColor = Color.fromARGB(255, 235, 235, 235);

// -- Grey Colors
const tTertiaryGrey = Color(0xFFF1F1F1);
const tWhiteColor = Colors.white;
const tWarningColor = Colors.red;
const tLightBlue = Colors.lightBlue;
const tBlueColor = Colors.blue;
const tDarkColor = Color(0xff000000);
const tCardBgColor = Color(0xFFF7F6F1);
const tGreenColor = Colors.green;

Color? backgroundColor1 = const Color(0xFFF1F1FE);
Color? backgroundColor2 = const Color(0xFFF3F5F7);
Color? backgroundColor3 = const Color(0xFFF4F4F4);
Color? backgroundColor4 = const Color(0xFFF5F6FA);
Color? backgroundColor5 = const Color(0xFFF5F6FA);
Color? primaryTextColor = const Color(0xFF151940);

// -- ON-BOARDING COLORS
const tOnBoardingPage1Color = Colors.white;
const tOnBoardingPage2Color = Color(0xfffddcdf);
const tOnBoardingPage3Color = Color(0xffffdcbd);

// -- SEAT COLORS
Color selectedSeatColor = const Color(0xFF2575EE);
Color bookedSeatColor = const Color(0xFFFF6E6F);
Color emptySeatColor = const Color(0xFFF7F7F7);
Color activeSeatNumberColor = const Color.fromARGB(255, 255, 255, 255);
Color inactiveSeatNumberColor = const Color(0xFF929292);
Color? seatBorder;

class CallConstant {
  static const appID = "2b2951939c9644d89c81caef7dd78f9a";
  static const appCert = "d020f74bebe84cf88eaf3be0a6c44db8";
  static const channelName = "Live";
  static const tempToken =
      "007eJxTYPAx62lfk9dzI8Eg4zPD15iSc99WOW+pT7a0fLr3l/OFypUKDEZJRpamhpbGlsmWZiYmKRaWyRaGyYmpaeYpKeYWaZaJU0PUUhsCGRmk1nizMDJAIIjPwuCTWZbKwAAAqw0gNQ==";
}

// Size
/* -- App Sizing -- */

//App default Sizing
const tDefaultSize = 30.0;
const tSplashContainerSize = 30.0;
const tButtonHeight = 15.0;
const tFormHeight = 30.0;

// Font Sizes
const double categoriesHeaderFontSize = 20.0;
const double categoryIconLabelTextSize = 15.0;

// Icon Sizes
const double iconSize = 30.0;
const double iconBgHeight = 40.0;
const double iconBgWidth = 40.0;
const double iconBgRadius = 100.0;

//  Text Bg Sizes
const double textBgHeight = 20.0;
// const double textBgWidth = 50.0;
const double textBgRadius = 100.0;

// Text
/* -- App Text Strings -- */

// -- GLOBAL Texts
const String tNext = "Next";
const String tLogin = "Login";
const String tEmail = "E-mail";
const String tSignup = "Sign-up";
const String tPhoneNo = "Phone number";
const String tMomoNumber = "Momo Number";
const String tStudentID = "Student ID";
const String tPassword = "Password";
const String tConfirmPassword = "Confirm Password";
const String tFullName = "Full Name";
const String tFirstName = "First Name";
const String tLastName = "Last Name";
const String tBookNow = "Book Now";

const String tForgetPassword = "Forgot password?";
const String tSendPasswordResetLink = "Send";
const tGetStarted = "Get Started";
const String tVerify = "Verify";
const String tVerification = "Verification";
const String tVerificationSubtitle =
    "Enter verification code sent to this number";

// -- App Bar Titles
const String tEditProfile = "Edit Profile";
const String tProfile = "Profile";
const String tBookedService = "Booked Service";
const String tMyBookings = "My Bookings";
const String tChat = "Chat";
const String tServiceProvider = "Service Provider";

//  Body Titles
const String tDescription = "Description";

// -- Bottom App Bar
const String tHomeIconName = "Home";
const String tHistoryIconName = "History";
const String tProfileIconName = "Profile";

// -- On Boarding Text
const String tOnBoardingTitle1 = "Explore Services";
const String tOnBoardingTitle2 = "Trusted Professionals";
const String tOnBoardingTitle3 = "Convenience";
const String tOnBoardingSubTitle1 =
    "Discover a world of services tailored to your home's needs and your convenience.";
const String tOnBoardingSubTitle2 =
    "Experience peace of mind with our skilled and reliable team of artisans and home service experts.";
const String tOnBoardingSubTitle3 =
    "Say goodbye to hassles. Say hello to seamless scheduling and hassle-free services.";
const String tSkip = "SKIP";

// -- Welcome Screen Text
const String tWelcomeTitle = "Connect with Artisans and Home Service Providers";
const String tWelcomeSubTitle =
    "Let's connect you to professionals who will get all your .";

// -- Login Screen Text
const String tLoginTitle = "Welcome back,";
const String tLoginSubTitle = "Login to start booking a seat !";
const String tRememberMe = "Remember Me";
const String tDontHaveAnAccount = "Don't have an Account? ";

// -- Sign Up Screen Text
const String tSignUpTitle = "SIGN-UP";
const String tSignUpSubTitle = "Create your account to get onboard.";
const String tAlreadyHaveAnAccount = "Already have an Account? ";
const String tRememberPassword = "Remember Password? ";

// -- Forget Password Text
const String tForgetPasswordTitle = "Forgot Your Pasword?";
const String tForgetPasswordSubTitle =
    "Select one of the options given below to reset your password.";
const String tResetViaEMail = "Reset via Mail Verification";
const String tResetViaPhone = "Reset via Phone Verification";
const String tResetViaEMailSubtitle =
    "Enter your email adddress to recieve password reset link";
const String tResetViaPhoneSubtitle =
    "Enter your phone number to recieve code through SMS";

// -- Forget Password Via Phone - Text
const String tForgetPhoneSubTitle =
    "Enter your registered Phone No to receive OTP";

// -- Forget Password Via E-Mail - Text
const String tForgetMailSubTitle =
    "Enter your registered e-mail to receive password reset link";

// -- Verification Screen - Text
const String tResendCodeTitle = "Didn't recieve code?";
const String tResendCode = "Resend";

// -- Screen Titles - Text
const String tBookingHistoryScreenTittle = "Booking History";
const String tSeatSelectionScreenTitle = "Select Your Seat";
const String tReservationDetailsScreenTitle = "Reservation Details";

// -- Social Login -Text
const String tGoogleLoginLabel = "Login with Google";
const String tFacebookLoginLabel = "Login with Facebook";
const String tFacebookSignUpLabel = "Sign-Up with Facebook";
const String tGoogleSignUpLabel = "Sign-Up with Google";

// -- Mock Text
const String tServiceDescription =
    "My grandma is having running stomach and she has been feeling nausea. I would need you come help me treat her asap. She is also complaining of severe migrain, I believe you can help me treat her";
