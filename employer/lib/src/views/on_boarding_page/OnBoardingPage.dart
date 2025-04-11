import 'package:employer/src/views/authentication/login_screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Get Started',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        'Login',
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => LoginScreen()),
        );
      },
      controllerColor: Theme.of(context).primaryColor,
      totalPage: 3,
      centerBackground: true,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/images/onboarding_img1.jpg',
          width: double.infinity,
        ),
        Image.asset(
          'assets/images/onboarding_img2.jpg',
          width: double.infinity,
        ),
        Image.asset(
          'assets/images/onboarding_img3.jpg',
          width: double.infinity,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome to Edudoor's",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Employer",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.surfaceTint),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                'Streamline your hiring process and manage your institutions with ease.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Advanced Applicant",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Tracking",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.surfaceTint),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Keep track of applications with our advanced tracking system, ensuring you never miss a qualified candidate.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Enhance Your Process to",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Hire",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.surfaceTint),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Start now to streamline your recruitment and manage your institutions efficiently.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 40.sp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
