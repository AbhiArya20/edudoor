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
            builder: (context) => const Center(
              child: Text('Login'),
            ),
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
      skipFunctionOverride: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const Center(
              child: Text('Login'),
            ),
          ),
        );
      },
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const Center(
              child: Text('Login'),
            ),
          ),
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
                "Jobseeker",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.surfaceTint),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                'Your all-in-one platform for job applications, career growth, and professional development for teachers.',
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
                "You’ve reached right",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Destination",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.surfaceTint),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Receive tailored job recommendations based on your teaching skills, preferences, and career goals.",
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
                "Elevate Your Teaching",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Career",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.surfaceTint),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Let's get started on your path to success. Explore all the features and take the first step towards your teaching career goals.",
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
