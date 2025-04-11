import 'package:flutter/gestures.dart';
import 'package:jobseeker/src/routes/app_navigator.dart';
import 'package:jobseeker/src/routes/app_routes.dart';
import 'package:jobseeker/src/sizer/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobseeker/src/themes/font_family.dart';

class Background extends StatelessWidget {
  final String firstImagePath, secondImagePath;
  final AlignmentGeometry firstAlignment, secondAlignment;

  const Background({super.key, required this.firstAlignment, required this.secondAlignment, required this.firstImagePath, required this.secondImagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: BackgroundImage(
                imagePath: firstImagePath,
                alignment: firstAlignment,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: BackgroundImage(
                imagePath: secondImagePath,
                alignment: secondAlignment,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16.sp),
          child: const MyTextWidget(),
        )
      ],
    );
  }
}

class BackgroundImage extends StatelessWidget {
  final String imagePath;
  final AlignmentGeometry alignment;

  const BackgroundImage({super.key, required this.imagePath, required this.alignment});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 40.h,
      child: SvgPicture.asset(
        imagePath,
        fit: BoxFit.fill,
        alignment: alignment,
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By Login/Signup, you agree to our ',
        style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.bold, fontFamily: FontFamily.lato),
        children: [
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(AppRoutes.LOGIN_TERM_CONDITION);
              },
          ),
          TextSpan(
            text: ' and ',
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold, fontFamily: FontFamily.lato),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(AppRoutes.LOGIN_PRIVACY_POLICY);
              },
          ),
        ],
      ),
    );
  }
}
