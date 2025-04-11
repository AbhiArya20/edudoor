import 'package:employer/src/views/authentication/login_screen/widgets/login_foreground.dart';
import 'package:employer/src/views/authentication/login_screen/widgets/mobile_number_input_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Mobile Number",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          MobileNumber(),
          _AnimatedLiquidLinearProgressIndicator(),
        ],
      ),
    );
  }
}

class _AnimatedLiquidLinearProgressIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedLiquidLinearProgressIndicatorState();
}

class _AnimatedLiquidLinearProgressIndicatorState extends State<_AnimatedLiquidLinearProgressIndicator> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );

    _animationController.addListener(() => setState(() {}));
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = _animationController.value * 100;
    return Center(
      child: Container(
        width: double.infinity,
        height: 75.0,
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: LiquidLinearProgressIndicator(
          value: _animationController.value,
          // backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
          borderRadius: 15.0,
          center: Text(
            "Continue",
            // style: TextStyle(
            //   color: Colors.lightBlueAccent,
            //   fontSize: 20.0,
            //   fontWeight: FontWeight.bold,
            // ),
          ),
        ),
      ),
    );
  }
}
