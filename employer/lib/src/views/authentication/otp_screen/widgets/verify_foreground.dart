// import 'package:employer/src/blocs_cubits/authentication_bloc/authentication_bloc.dart';
// import 'package:employer/src/constants/assets_path.dart';
// import 'package:employer/src/sizer/extension.dart';
// import 'package:employer/src/themes/app_colors.dart';
// import 'package:employer/src/themes/font_family.dart';
// import 'package:employer/src/view/authentication/common_views/send_otp_button.dart';
// import 'package:employer/src/view/authentication/otp_screen/widgets/otp_info_widget.dart';
// import 'package:employer/src/view/authentication/otp_screen/widgets/otp_input_field.dart';
// import 'package:employer/src/view/authentication/otp_screen/widgets/resend_otp_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';

// class VerifyForeground extends StatefulWidget {
//   const VerifyForeground({super.key});

//   @override
//   State<VerifyForeground> createState() => _VerifyForegroundState();
// }

// class _VerifyForegroundState extends State<VerifyForeground> {
//   late TextEditingController otpController;

//   @override
//   void initState() {
//     super.initState();
//     otpController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     otpController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: EdgeInsets.all(16.sp),
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: 12.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Image.asset(
//                       AssetsPath.LOGO,
//                       height: 15.h,
//                     ),
//                     Text(
//                       "EduDoor",
//                       style: TextStyle(
//                         fontSize: 30.sp,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: FontFamily.lato,
//                         letterSpacing: 2.sp,
//                         height: 0,
//                       ),
//                     ),
//                     Text(
//                       "Door Of All Academic Solutions",
//                       style: TextStyle(
//                         fontSize: 7.sp,
//                         fontWeight: FontWeight.bold,
//                         fontFamily: FontFamily.lato,
//                         letterSpacing: 1.sp,
//                         height: 0,
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(height: 3.h),
//             Text(
//               "enter_otp".tr,
//               style: TextStyle(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               "otp_sent".tr,
//               style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold, color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(.5) ?? Theme.of(context).primaryColor),
//               textAlign: TextAlign.center,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.sp),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   SizedBox(height: 2.h),
//                   const _CategorySelector(),
//                   SizedBox(height: 2.h),
//                   Center(
//                     child: OtpInputField(
//                       otpController: otpController,
//                     ),
//                   ),
//                   const ResendOtpWidget(),
//                   BlocBuilder<AuthenticationBloc, AuthenticationState>(
//                     builder: (context, state) {
//                       return SendOtpButton(
//                         isWhatsapp: false,
//                         onTap: () {
//                           if (state is AuthenticationSuccessOTPState) {
//                             context.read<AuthenticationBloc>().add(AuthenticationVerifyOtpEvent(phone: state.phone, isWhatsapp: state.isWhatsapp, hash: state.hash, otp: otpController.text));
//                           }
//                         },
//                         color: colorPurpleLight.withOpacity(.3),
//                         child: Text(
//                           'verify_otp'.tr,
//                           style: TextStyle(
//                             color: colorPurple,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _CategorySelector extends StatelessWidget {
//   const _CategorySelector();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100.w,
//       height: 45.sp,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: colorIndigoLight.withOpacity(.3),
//           width: 1,
//         ),
//         color: colorIndigoLight.withOpacity(.3),
//         borderRadius: BorderRadius.circular(25.sp),
//       ),
//       child: const Center(child: OtpInfoWidget()),
//     );
//   }
// }
