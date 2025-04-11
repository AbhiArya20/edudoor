import 'dart:async';
import 'dart:convert';
import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:jobseeker/src/models/jobseeker_model.dart';
// import 'package:jobseeker/src/blocs_cubits/change_register_step_block/change_register_step_bloc.dart';
// import 'package:jobseeker/src/blocs_cubits/count_down_bloc/count_down_bloc.dart';
// import 'package:jobseeker/src/errors/error_handler.dart';
// import 'package:jobseeker/src/firebase/firebase_analytics.dart';
// import 'package:jobseeker/src/resources/jobseeker_repo.dart';
// import 'package:jobseeker/src/routes/app_navigator.dart';
// import 'package:jobseeker/src/routes/app_routes.dart';
// import 'package:jobseeker/src/secure_storage/local_storage_keys.dart';
// import 'package:jobseeker/src/secure_storage/secure_storage.dart';
// import 'package:jobseeker/src/services/web_socket/socket.dart';
// import 'package:jobseeker/src/view/common/gradients/all_gradient.dart';
// import 'package:jobseeker/src/view/common/snack_bar/custom_get_snack_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseeker/src/blocs_cubits/all_bloc.dart';
import 'package:jobseeker/src/logs/logger.dart';
import 'package:jobseeker/src/types/enums.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  // jobseekerModel? jobseekerModel;

  AuthenticationBloc() : super(AuthenticationInitialState());

  // {
  //   on<AuthenticationCheckEvent>(_checkEvent);

  //   on<AuthenticationSendOtpEvent>(_sendOtp);

  //   on<AuthenticationResendOtpEvent>(_resendOtp);

  //   on<AuthenticationVerifyOtpEvent>(_verifyOtp);

  //   on<AuthenticationLogoutEvent>(_logout);

  //   on<AuthenticationClearEvent>(_clear);

  //   on<AuthenticationUpdateBasicDetailsEvent>((event, emit) => _update(event, emit, RequestDataType.json));

  //   on<AuthenticationUploadEvent>((event, emit) => _update(event, emit, RequestDataType.formData));

  //   on<AuthenticationSendEmailOtpEvent>(_sendEmailOtp);

  //   on<AuthenticationVerifyEmailOtpEvent>(_verifyEmailOtp);
  // }

  // FutureOr<void> _checkEvent(AuthenticationCheckEvent event, Emitter<AuthenticationState> emit) async {
  //   try {
  //     final refreshToken = await SecureStorage.read(key: LocalStorageKeys.REFRESH_TOKEN);
  //     final jobseeker = await SecureStorage.read(key: LocalStorageKeys.jobseeker);
  //     final refreshTokenExpire = await SecureStorage.read(key: LocalStorageKeys.REFRESH_TOKEN_EXPIRE);

  //     if (refreshToken != null && jobseeker != null && refreshTokenExpire != null && DateTime.now().isBefore(DateTime.parse(refreshTokenExpire))) {
  //       jobseekerModel = jobseekerModel.fromJson(jsonDecode(jobseeker));
  //       _tracking();
  //       SocketService.connectAndListen();
  //       emit(AuthenticationSuccessState());
  //     } else {
  //       throw Exception("User not authenticated");
  //     }

  //     try {
  //       final jobseekerModel updatejobseekerModel = await jobseekerRepo().getUserInfo();
  //       await SecureStorage.write(key: LocalStorageKeys.jobseeker, value: jsonEncode(updatejobseekerModel));
  //       jobseekerModel = updatejobseekerModel;
  //       _tracking();
  //     } catch (error) {
  //       Log.error(tag: "AUTHENTICATION_CHECK_REFRESH_USER", message: "Failed while updating user's data");
  //     }
  //   } catch (error) {
  //     Log.error(tag: "AUTHENTICATION_CHECK", message: "Failed while checking authenticity of the user");
  //     await SecureStorage.deleteAll();
  //     emit(AuthenticationFailedState());
  //   }
  // }

  // FutureOr<void> _sendOtp(AuthenticationSendOtpEvent event, Emitter<AuthenticationState> emit) async {
  //   final String phone = event.phone;
  //   final bool isWhatsapp = event.isWhatsapp;
  //   if (phone.length != 10 || !RegExp(r'^[0-9]*$').hasMatch(phone)) {
  //     CustomGetSnackBar(title: "Invalid phone number", subTitle: "Please enter a valid phone number", backgroundGradient: AllGradient.errorGradient).show();
  //     return;
  //   }

  //   emit(AuthenticationLoadingOTPState(isWhatsapp: isWhatsapp));

  //   try {
  //     Map<String, dynamic> responseData = await jobseekerRepo().sendOTP(phone: phone, isWhatsapp: isWhatsapp);
  //     emit(AuthenticationSuccessOTPState(phone: responseData['phone'], isWhatsapp: responseData['isWhatsapp'], hash: responseData['hash']));
  //     AllBloc.countDownBloc.add(CountDownStartEvent());
  //     AppNavigator.push(AppRoutes.VERIFY_OTP, arguments: {"slide": SlideMode.right});
  //   } catch (error, stackTrace) {
  //     emit(AuthenticationFailedState());
  //     ErrorHandler.handleError(error, stackTrace);
  //     Log.error(tag: "SEND_OTP_EVENT", message: "Failed to send OTP to $phone via ${isWhatsapp ? "Whatsapp" : "SMS"}");
  //   }
  // }

  // FutureOr<void> _resendOtp(AuthenticationResendOtpEvent event, Emitter<AuthenticationState> emit) async {
  //   bool? isWhatsapp = event.isWhatsapp;
  //   String? phone = event.phone;
  //   AllBloc.countDownBloc.add(CountDownStartEvent());
  //   try {
  //     Map<String, dynamic> responseData = await jobseekerRepo().sendOTP(phone: phone, isWhatsapp: isWhatsapp);
  //     emit(AuthenticationSuccessOTPState(phone: responseData['phone'], isWhatsapp: responseData['isWhatsapp'], hash: responseData['hash']));
  //   } catch (error) {
  //     Log.error(tag: "RESEND_OTP_EVENT", message: "Failed to resend OTP to $phone via ${isWhatsapp ? "Whatsapp" : "SMS"}");
  //   }
  // }

  // FutureOr<void> _verifyOtp(AuthenticationVerifyOtpEvent event, Emitter<AuthenticationState> emit) async {
  //   String? otp = event.otp;
  //   bool? isWhatsapp = event.isWhatsapp;
  //   String? phone = event.phone;
  //   String? hash = event.hash;

  //   if (otp == null || otp.toString().length != 4) {
  //     CustomGetSnackBar(title: "Invalid OTP", subTitle: "Please enter a valid OTP").show();
  //     return;
  //   }

  //   emit(AuthenticationLoadingState());
  //   try {
  //     Map<String, dynamic> responseData = await jobseekerRepo().verifyOTP(phone: phone, hash: hash, otp: otp, isWhatsapp: isWhatsapp);
  //     Log.fatal(tag: "tag", message: "message $responseData");
  //     await SecureStorage.write(key: LocalStorageKeys.ACCESS_TOKEN, value: responseData['accessToken']);
  //     await SecureStorage.write(key: LocalStorageKeys.REFRESH_TOKEN, value: responseData['refreshToken']);
  //     await SecureStorage.write(key: LocalStorageKeys.REFRESH_TOKEN_EXPIRE, value: responseData['refreshTokenExpiresIn']);
  //     await SecureStorage.write(key: LocalStorageKeys.jobseeker, value: jsonEncode(responseData['jobseeker']));

  //     jobseekerModel = responseData['jobseeker'];
  //     _tracking();

  //     SocketService.connectAndListen();

  //     emit(AuthenticationSuccessState());
  //     AppNavigator.popUntil(AppRoutes.ROOT);
  //   } catch (error, stackTrace) {
  //     emit(AuthenticationSuccessOTPState(phone: phone, isWhatsapp: isWhatsapp, hash: hash));
  //     ErrorHandler.handleError(error, stackTrace);
  //     Log.error(tag: "VERIFY_OTP_EVENT", message: "Failed to verify OTP to $phone via ${isWhatsapp ? "Whatsapp" : "SMS"}");
  //   }
  // }

  // FutureOr<void> _logout(AuthenticationLogoutEvent event, Emitter<AuthenticationState> emit) async {
  //   try {
  //     emit(AuthenticationLoadingLogoutState());
  //     final refreshToken = await SecureStorage.read(key: LocalStorageKeys.REFRESH_TOKEN) ?? "";
  //     await jobseekerRepo().logout(refreshToken: refreshToken);
  //   } catch (error, stackTrace) {
  //     ErrorHandler.handleError(error, stackTrace);
  //     Log.error(tag: "LOGOUT_EVENT", message: "Failed to logout the user");
  //   } finally {
  //     await SecureStorage.deleteAll();
  //     jobseekerModel = null;
  //     emit(AuthenticationFailedState());
  //     SocketService.disconnect();
  //     AppNavigator.popUntil(AppRoutes.ROOT);
  //     CustomGetSnackBar(title: "Logged Out", subTitle: "You have been logged out successfully", backgroundGradient: AllGradient.successGradient).show();
  //   }
  // }

  // FutureOr<void> _clear(AuthenticationClearEvent event, Emitter<AuthenticationState> emit) async {
  //   SecureStorage.deleteAll();
  //   SocketService.disconnect();
  //   AppNavigator.popUntil(AppRoutes.ROOT);
  //   jobseekerModel = null;
  //   emit(AuthenticationFailedState());
  //   CustomGetSnackBar(title: "Logged Out", subTitle: "You have been logged out", backgroundGradient: AllGradient.errorGradient).show();
  //   Log.info(tag: "CLEAR_AUTHENTICATION", message: "Clearing the authentication");
  // }

  // FutureOr<void> _update(AuthenticationUpdateEvent event, Emitter<AuthenticationState> emit, RequestDataType requestDataType) async {
  //   if (event.isValid()) {
  //     try {
  //       final jobseekerModel updatejobseekerModel;

  //       if (requestDataType == RequestDataType.json) {
  //         emit(AuthenticationUpdatingState());
  //         updatejobseekerModel = await jobseekerRepo().updatejobseeker(data: event.toJson());
  //         if (!event.onlyUpdate) {
  //           Log.info(tag: "UPDATE_jobseeker", message: "Updating the user's data 1");
  //           AllBloc.changeRegisterStepBloc.add(ChangeRegisterStepIncrementEvent());
  //         }
  //       } else {
  //         emit(AuthenticationStaticUpdatingState());
  //         updatejobseekerModel = await jobseekerRepo().uploadjobseeker(data: event.toFormData());
  //       }

  //       await SecureStorage.write(key: LocalStorageKeys.jobseeker, value: jsonEncode(updatejobseekerModel));
  //       jobseekerModel = updatejobseekerModel;
  //       CustomGetSnackBar(title: "Profile Updated", subTitle: "Your profile has been updated successfully", backgroundGradient: AllGradient.successGradient).show();
  //     } catch (error, stackTrace) {
  //       ErrorHandler.handleError(error, stackTrace);
  //       Log.error(tag: "UPDATE_jobseeker", message: "Failed to update the user");
  //     } finally {
  //       emit(AuthenticationSuccessState());
  //     }
  //   }
  // }

  // FutureOr<void> _sendEmailOtp(AuthenticationSendEmailOtpEvent event, Emitter<AuthenticationState> emit) async {
  //   try {
  //     Map<String, dynamic> responseData = await jobseekerRepo().sendEmailOtp(email: event.email);
  //     emit(AuthenticationSuccessEmailOTPState(email: responseData['email'], hash: responseData['hash']));
  //   } catch (error, stackTrace) {
  //     AppNavigator.pop();
  //     ErrorHandler.handleError(error, stackTrace);
  //     Log.error(tag: "SEND_EMAIL_OTP_EVENT", message: "Failed to send OTP to ${event.email}");
  //   }
  // }

  // FutureOr<void> _verifyEmailOtp(AuthenticationVerifyEmailOtpEvent event, Emitter<AuthenticationState> emit) async {
  //   int? otp = int.tryParse(event.otp);
  //   String? email = event.email;
  //   String? hash = event.hash;

  //   if (otp == null || otp.toString().length != 4) {
  //     CustomGetSnackBar(title: "Invalid OTP", subTitle: "Please enter a valid OTP").show();
  //     return;
  //   }

  //   try {
  //     emit(AuthenticationEmailVerificationState());
  //     jobseekerModel updatejobseekerModel = await jobseekerRepo().verifyEmailOtp(email: email, hash: hash, otp: otp);
  //     await SecureStorage.write(key: LocalStorageKeys.jobseeker, value: jsonEncode(updatejobseekerModel.toJson()));
  //     jobseekerModel = updatejobseekerModel;
  //     CustomGetSnackBar(title: "Email Verified", subTitle: "Your email has been verified successfully", backgroundGradient: AllGradient.successGradient).show();
  //   } catch (error, stackTrace) {
  //     ErrorHandler.handleError(error, stackTrace);
  //     Log.error(tag: "VERIFY_EMAIL_OTP_EVENT", message: "Failed to verify OTP to $email");
  //   } finally {
  //     emit(AuthenticationSuccessState());
  //   }
  // }

  // void _tracking() {
  //   TrackingService.setUserId(jobseekerModel?.phone ?? "user_id_unknown");
  //   TrackingService.setUserProperty("gender", jobseekerModel?.gender ?? "gender_unknown");
  //   final DateTime? dob = jobseekerModel?.birthday;
  //   final String age = dob != null ? (DateTime.now().year - dob.year).toString() : "age_unknown";
  //   TrackingService.setUserProperty("age", age);
  //   TrackingService.setUserProperty("email", jobseekerModel?.email ?? "email_unknown");
  // }
}
