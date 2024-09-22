import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/formfields/custom_form_field.dart';
import 'package:evcs/core/design/text/custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/utils/ui/widgets/utils/horizontal_padding.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/profile-screen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: Dimens.defaultPageHorizontalPadding,
          child: Form(
              key: formKey,
              autovalidateMode: _autoValidateMode,
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const Text5Title('PROFILE'),
                    VerticalPadding(5.h),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HorizontalPadding(30.w),
                          CircleAvatar(
                            radius: 45.5.r,
                            backgroundColor: DIManager.findCC().scaffoldBGColor,
                            child: Image.asset(AppAssets.man),
                          ),
                          SizedBox(
                            width: 93.w,
                          ),
                          Icon(
                            Icons.edit_square,
                            color: DIManager.findCC().defaultPrimaryColor,
                            size: 22.r,
                          ),
                        ]),
                    const VerticalPadding(3),
                    const Text5Title('Full Name'),
                    CustomFormField(
                      hint: 'Ebtehal Ahmed',
                      hasAboveTitle: false,
                      controller: nameController,
                    ),
                    const VerticalPadding(3),
                    const Text5Title('E-mail Address'),
                    CustomFormField(
                      hint: 'ebtehal@gmail.com',
                      hasAboveTitle: false,
                      controller: nameController,
                    ),
                    const VerticalPadding(3),
                    const Text5Title('Mobile'),
                    CustomFormField(
                      hint: '01025091652',
                      hasAboveTitle: false,
                      controller: nameController,
                    ),
                    const VerticalPadding(3),
                    const Text5Title('Password'),
                    CustomFormField(
                      isSecure: true,
                      hint: '**********',
                      hasAboveTitle: false,
                      controller: nameController,
                    ),
                  ])),
        ),
      ),
    ));
  }
}
