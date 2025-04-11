// import 'package:employer/src/blocs_cubits/authentication_bloc/authentication_bloc.dart';
// import 'package:employer/src/sizer/extension.dart';
// import 'package:employer/src/themes/app_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pinput/pinput.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';

// class OtpInputField extends StatefulWidget {
//   final TextEditingController otpController;
//   const OtpInputField({super.key, required this.otpController});

//   @override
//   State<OtpInputField> createState() => _OtpInputFieldState();
// }

// class _OtpInputFieldState extends State<OtpInputField> {
//   @override
//   Widget build(BuildContext context) {
//     final defaultPinTheme = PinTheme(
//       width: 50.sp,
//       height: 50.sp,
//       textStyle: TextStyle(
//         fontSize: 22.sp,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.sp),
//         border: Border.all(color: colorBlue),
//       ),
//     );

//     return Form(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           BlocBuilder<AuthenticationBloc, AuthenticationState>(
//             builder: (context, state) {
//               return Pinput(
//                 controller: widget.otpController,
//                 androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
//                 onTapOutside: (event) => {FocusScope.of(context).requestFocus(FocusNode())},
//                 listenForMultipleSmsOnAndroid: true,
//                 defaultPinTheme: defaultPinTheme,
//                 separatorBuilder: (index) => SizedBox(width: 8.sp),
//                 onClipboardFound: (value) {
//                   widget.otpController.setText(value);
//                 },
//                 onCompleted: (value) {
//                   if (state is AuthenticationSuccessOTPState) {
//                     context.read<AuthenticationBloc>().add(AuthenticationVerifyOtpEvent(
//                           phone: state.phone,
//                           isWhatsapp: state.isWhatsapp,
//                           hash: state.hash,
//                           otp: value,
//                         ));
//                   }
//                 },
//                 hapticFeedbackType: HapticFeedbackType.lightImpact,
//                 onSubmitted: (pin) {
//                   if (state is AuthenticationSuccessOTPState) {
//                     context.read<AuthenticationBloc>().add(AuthenticationVerifyOtpEvent(
//                           phone: state.phone,
//                           isWhatsapp: state.isWhatsapp,
//                           hash: state.hash,
//                           otp: pin,
//                         ));
//                   }
//                 },
//                 cursor: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(bottom: 8.sp),
//                       width: 22.sp,
//                       height: 1.sp,
//                       color: colorBlueLight,
//                     ),
//                   ],
//                 ),
//                 focusedPinTheme: defaultPinTheme.copyWith(
//                   decoration: defaultPinTheme.decoration!.copyWith(
//                     borderRadius: BorderRadius.circular(8.sp),
//                     border: Border.all(color: colorBlue),
//                   ),
//                 ),
//                 submittedPinTheme: defaultPinTheme.copyWith(
//                   decoration: defaultPinTheme.decoration!.copyWith(
//                     borderRadius: BorderRadius.circular(20.sp),
//                     border: Border.all(color: colorBlue),
//                   ),
//                 ),
//                 errorPinTheme: defaultPinTheme.copyBorderWith(
//                   border: Border.all(color: colorRed),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
