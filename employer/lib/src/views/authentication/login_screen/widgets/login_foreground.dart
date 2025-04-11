// import 'package:employer/src/blocs_cubits/authentication_bloc/authentication_bloc.dart';
// import 'package:employer/src/views/authentication/common_views/send_otp_button.dart';
// import 'package:employer/src/views/authentication/login_screen/widgets/mobile_number_input_box.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:get/get.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';

// class LoginForeground extends StatefulWidget {
//   const LoginForeground({super.key});

//   @override
//   State<LoginForeground> createState() => _LoginForegroundState();
// }

// class _LoginForegroundState extends State<LoginForeground> {
//   late TextEditingController mobileController;

//   @override
//   void initState() {
//     super.initState();
//     mobileController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     mobileController.dispose();
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
//                     // Image.asset(
//                     //   AssetsPath.LOGO,
//                     //   height: 15.h,
//                     // ),
//                     Text(
//                       "EduDoor",
//                       style: TextStyle(
//                         fontSize: 30.sp,
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 2.sp,
//                         height: 0,
//                       ),
//                     ),
//                     Text(
//                       "Door Of All Academic Solutions",
//                       style: TextStyle(
//                         fontSize: 7.sp,
//                         fontWeight: FontWeight.bold,
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
//               'login_sign_up'.tr,
//               style: TextStyle(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 5.w),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   SizedBox(height: 3.h),
//                   const _CategorySelector(),
//                   SizedBox(height: 1.5.h),
//                   MobileNumber(mobileController: mobileController),
//                   SizedBox(height: 4.h),
//                   SendOtpButton(
//                     isWhatsapp: false,
//                     onTap: () {
//                       // context.read<AuthenticationBloc>().add(AuthenticationSendOtpEvent(isWhatsapp: false, phone: mobileController.text));
//                     },
//                     color: Theme.of(context).colorScheme.secondary.withOpacity(.3),
//                     child: Text(
//                       'get_otp'.tr,
//                       style: TextStyle(
//                         color: Theme.of(context).colorScheme.secondary,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 1.h),
//                   const _SignInWithText(),
//                   SizedBox(height: 1.h),
//                   SendOtpButton(
//                       isWhatsapp: true,
//                       onTap: () {
//                         // context.read<AuthenticationBloc>().add(AuthenticationSendOtpEvent(isWhatsapp: true, phone: mobileController.text));
//                       },
//                       color: Colors.green.withOpacity(.8),
//                       child: Text("Whatsapp")

//                       // Image.asset(
//                       //   AssetsPath.WHATSAPP_ICON,
//                       //   height: 5.h,
//                       // ),
//                       ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 3.h),
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
//           // color: colorIndigoLight.withOpacity(.3),
//           width: 1.sp,
//         ),
//         // color: colorIndigoLight.withOpacity(.3),
//         borderRadius: BorderRadius.circular(25.sp),
//       ),
//       child: Center(
//         child: Text(
//           "employer".tr,
//           style: TextStyle(
//             fontSize: 16.sp,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _SignInWithText extends StatelessWidget {
//   const _SignInWithText();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50.w,
//       alignment: Alignment.center,
//       child: Text(
//         "sign_in_with".tr,
//         style: TextStyle(
//           // color: colorGrey,
//           fontSize: 12.sp,
//         ),
//       ),
//     );
//   }
// }
