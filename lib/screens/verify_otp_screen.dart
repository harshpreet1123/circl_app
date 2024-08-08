import 'package:circl_app/styles/colors.dart';
import 'package:circl_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  late final TextEditingController pinController;
  late final FocusNode focusNode;
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    pinController = TextEditingController();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Colors and styling
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Kcolors.placeholder),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Form(
            key: formKey,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.chevron_left,
                          size: 28,
                        ),
                      ),
                      const Text(
                        'Verify Otp',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                        width: 28,
                      )
                    ]),
                const SizedBox(height: 40),
                Pinput(
                  controller: pinController,
                  focusNode: focusNode,
                  defaultPinTheme: defaultPinTheme,
                  length: 5,
                  separatorBuilder: (index) => const SizedBox(width: 8),
                  validator: (value) =>
                      value == '22222' ? null : 'Pin is incorrect',
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) => debugPrint('onCompleted: $pin'),
                  onChanged: (value) => debugPrint('onChanged: $value'),
                  cursor: Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: focusedBorderColor,
                  ),
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Kcolors.primaryColor),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: fillColor,
                      borderRadius: BorderRadius.circular(19),
                      border: Border.all(color: Kcolors.primaryColor),
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(color: Colors.redAccent),
                  ),
                ),
                const SizedBox(height: 16),
                const Spacer(),
                Button(
                  label: "Verify",
                  isFilled: true,
                  isPrimary: true,
                  onPressed: () {
                    focusNode.unfocus();
                    if (formKey.currentState!.validate()) {
                      // Perform validation or other actions
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
