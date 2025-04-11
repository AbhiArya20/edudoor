import 'package:employer/src/blocs_cubits/authentication_bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileNumber extends StatefulWidget {
  // final TextEditingController mobileController;
  const MobileNumber({
    super.key,
    // required this.mobileController,
  });

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  late final FilteringTextInputFormatter _inputFormatter;

  @override
  void initState() {
    super.initState();
    _inputFormatter = FilteringTextInputFormatter.allow(RegExp(r'\d+'));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Row(
        children: <Widget>[
          const Expanded(
            flex: 1,
            child: Hint91(),
          ),
          SizedBox(width: 3.w),
          Expanded(
            flex: 4,
            child: SizedBox(
              height: 45.sp,
              child: TextFormField(
                autofillHints: const [
                  AutofillHints.telephoneNumber,
                ],
                inputFormatters: [_inputFormatter],
                maxLength: 10,
                keyboardType: TextInputType.phone,
                cursorColor: Theme.of(context).colorScheme.primary,
                cursorRadius: Radius.circular(15.sp),
                // controller: widget.mobileController,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                onChanged: (value) {
                  if (value.length == 10) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  }
                  setState(() {});
                },
                onFieldSubmitted: (value) {
                  // context.read<AuthenticationBloc>().add(AuthenticationSendOtpEvent(isWhatsapp: false, phone: widget.mobileController.text));
                },
                onTapOutside: (event) => {FocusScope.of(context).requestFocus(FocusNode())},
                decoration: InputDecoration(
                  counterText: "",
                  contentPadding: EdgeInsets.symmetric(vertical: 3.w, horizontal: 3.w),
                  hintText: 'enter_phone_number'.tr,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    // color: colorGrey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.sp),
                    borderSide: BorderSide(color: Theme.of(context).focusColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.sp),
                    borderSide: BorderSide(color: Theme.of(context).focusColor),
                  ),
                  // suffixIcon: widget.mobileController.text.length == 10
                  //     ? Container(
                  //         height: 16.sp,
                  //         width: 16.sp,
                  //         margin: EdgeInsets.all(12.sp),
                  //         decoration: BoxDecoration(
                  //           shape: BoxShape.circle,
                  //           // color: colorGreen,
                  //         ),
                  //         child: Icon(
                  //           Icons.done,
                  //           // color: colorWhite,
                  //           size: 16.sp,
                  //         ),
                  //       )
                  //     : null,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Hint91 extends StatelessWidget {
  const Hint91({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.sp,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).focusColor,
          width: 1.sp,
        ),
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Center(
        child: Text(
          '+91',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
