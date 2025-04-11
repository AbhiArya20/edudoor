part of 'authentication_bloc.dart';

abstract class AuthenticationEvent {}

// class AuthenticationCheckEvent extends AuthenticationEvent {}

// class AuthenticationSendOtpEvent extends AuthenticationEvent {
//   final bool isWhatsapp;
//   final String phone;
//   AuthenticationSendOtpEvent({this.isWhatsapp = false, required this.phone});
// }

// class AuthenticationResendOtpEvent extends AuthenticationEvent {
//   final bool isWhatsapp;
//   final String phone;
//   AuthenticationResendOtpEvent({required this.isWhatsapp, required this.phone});
// }

// class AuthenticationVerifyOtpEvent extends AuthenticationEvent {
//   final String phone;
//   final String hash;
//   final bool isWhatsapp;
//   final String? otp;
//   AuthenticationVerifyOtpEvent({required this.phone, required this.hash, required this.isWhatsapp, required this.otp});
// }

// abstract class AuthenticationUpdateEvent extends AuthenticationEvent {
//   final bool onlyUpdate = true;
//   Map<String, dynamic> toJson();
//   FormData toFormData();
//   bool isValid();
// }

// class AuthenticationUpdateBasicDetailsEvent extends AuthenticationUpdateEvent {
//   // @override
//   // final bool onlyUpdate;
//   String? fullName;
//   String? email;
//   String? address;
//   double? lat;
//   double? lng;
//   DateTime? dob;
//   String? gender;

//   @override
//   Map<String, dynamic> toJson() {
//     return {
//       "fullName": fullName,
//       "email": email,
//       "address": address,
//       "lat": lat,
//       "lng": lng,
//       "DOB": dob?.toIso8601String(),
//       'gender': gender,
//     };
//   }

//   @override
//   bool isValid() {
//     if (fullName == null || fullName!.isEmpty) {
//       CustomGetSnackBar(title: "Full Name is required", subTitle: "Please enter your full name", backgroundGradient: AllGradient.errorGradient).show();
//       return false;
//     } else if (email == null || email!.isEmpty) {
//       CustomGetSnackBar(title: "Email is required", subTitle: "Please enter your email", backgroundGradient: AllGradient.errorGradient).show();
//       return false;
//     } else if (address == null || address!.isEmpty) {
//       CustomGetSnackBar(title: "Address is required", subTitle: "Please enter your address", backgroundGradient: AllGradient.errorGradient).show();
//       return false;
//     } else if (lat == null || lng == null) {
//       CustomGetSnackBar(title: "Location is required", subTitle: "Please select your location", backgroundGradient: AllGradient.errorGradient).show();
//       return false;
//     } else if (dob == null) {
//       CustomGetSnackBar(title: "Date of Birth is required", subTitle: "Please select your date of birth", backgroundGradient: AllGradient.errorGradient).show();
//       return false;
//     } else if (gender == null || gender!.isEmpty) {
//       CustomGetSnackBar(title: "Gender is required", subTitle: "Please select your gender", backgroundGradient: AllGradient.errorGradient).show();
//       return false;
//     }
//     return true;
//   }

//   AuthenticationUpdateBasicDetailsEvent(onlyUpdate, {this.fullName, this.email, this.address, this.lat, this.lng, this.dob, this.gender});

//   @override
//   FormData toFormData() {
//     throw UnimplementedError();
//   }
// }

// class AuthenticationUploadEvent extends AuthenticationUpdateEvent {
//   File? profilePicLink;

//   AuthenticationUploadEvent({
//     this.profilePicLink,
//   });

//   @override
//   bool isValid() {
//     return profilePicLink != null;
//   }

//   @override
//   FormData toFormData() {
//     final staticData = <String, dynamic>{};
//     if (profilePicLink != null) {
//       final filename = profilePicLink!.path.split('/').last;
//       staticData["profilePicLink"] = MultipartFile.fromFileSync(profilePicLink!.path, filename: filename);
//     }

//     return FormData.fromMap(staticData);
//   }

//   @override
//   Map<String, dynamic> toJson() {
//     throw UnimplementedError();
//   }
// }

// class AuthenticationLogoutEvent extends AuthenticationEvent {}

// class AuthenticationClearEvent extends AuthenticationEvent {}

// class AuthenticationSendEmailOtpEvent extends AuthenticationEvent {
//   final String email;
//   AuthenticationSendEmailOtpEvent({required this.email});
// }

// class AuthenticationVerifyEmailOtpEvent extends AuthenticationEvent {
//   final String email;
//   final String hash;
//   final String otp;
//   AuthenticationVerifyEmailOtpEvent({required this.email, required this.hash, required this.otp});
// }
