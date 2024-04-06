import "package:service_masters/common/barrels.dart";

@RoutePage()
class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(19),
      border: Border.all(color: tPrimaryColor),
    ),
  );

  final pinController = TextEditingController();

  final focusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: CircledArrowBackIcon(),
                ),
              ),
              const FormHeader(
                title: "Verification",
                subtitle: "Enter verification code sent to this number",
              ),
              const Spacer(),
              const Text("+233548396509"),
              const Spacer(),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Pinput(
                  length: 6,
                  controller: pinController,
                  focusNode: focusNode,
                  androidSmsAutofillMethod:
                      AndroidSmsAutofillMethod.smsUserConsentApi,
                  listenForMultipleSmsOnAndroid: true,
                  defaultPinTheme: defaultPinTheme,
                  separatorBuilder: (index) => const Gap(8),
                  validator: (value) {
                    return value == "222222" ? null : "Pin is incorrect";
                  },
                  onClipboardFound: (value) {
                    debugPrint("onClipboardFound: $value");
                    pinController.setText(value);
                  },
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) {
                    debugPrint("onCompleted: $pin");
                  },
                  onChanged: (value) {
                    debugPrint("onChanged: $value");
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                        color: AppThemeData.focusedBorderColor,
                      ),
                    ],
                  ),
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: AppThemeData.focusedBorderColor),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: AppThemeData.fillColor,
                      borderRadius: BorderRadius.circular(19),
                      border:
                          Border.all(color: AppThemeData.focusedBorderColor),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(color: Colors.redAccent),
                  ),
                ),
              ),
              const Spacer(),
              const Text("Didn't recieve code?"),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Resend",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const Spacer(
                flex: 10,
              ),
              PrimaryButton(
                onPressed: () {
                  context
                      .read<VerifyUserCubit>()
                      .verifyOTP("verificationId", pinController.text);
                },
                label: tVerify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
