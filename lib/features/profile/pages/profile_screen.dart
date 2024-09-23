import 'package:evcs/core/constants/app_assets.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/formfields/custom_form_field.dart';
import 'package:evcs/core/design/text/custom_text.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/localization/cubit/locale_cubit.dart';
import 'package:evcs/core/states/base_fail_state.dart';
import 'package:evcs/core/states/base_success_state.dart';
import 'package:evcs/core/states/base_wait_state.dart';
import 'package:evcs/core/utils/ui/widgets/utils/horizontal_padding.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:evcs/data/models/profile_model/profile_model.dart';
import 'package:evcs/features/profile/cubit/profile_cubit.dart';
import 'package:evcs/features/profile/cubit/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final _localization = DIManager.findDep<LocaleCubit>().appLocalizations;
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    DIManager.findDep<ProfileCubit>().getProfile();
  }

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
              child: BlocBuilder<ProfileCubit, ProfileState>(
                bloc: DIManager.findDep<ProfileCubit>(),
                builder: (context, state) {
                  final profile = state.profileState;

                  if (profile is BaseLoadingState) {
                    return const CircularProgressIndicator();
                  }
                  if (profile is BaseFailState) {
                    return const Text('Error');
                  }
                  if (profile is BaseSuccessState) {
                    final data = profile.data as ProfileModel;
                    return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Text5Title(_localization.profile),
                          VerticalPadding(5.h),
                          Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                HorizontalPadding(30.w),
                                CircleAvatar(
                                  radius: 45.5.r,
                                  backgroundColor:
                                      DIManager.findCC().scaffoldBGColor,
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
                          Text5Title(_localization.fullName),
                          CustomFormField(
                            hint: '${data.firstName} ${data.lastName}',
                            hasAboveTitle: false,
                            controller: nameController,
                          ),
                          const VerticalPadding(3),
                          Text5Title(_localization.email),
                          CustomFormField(
                            hint: data.email,
                            hasAboveTitle: false,
                            controller: emailController,
                          ),
                          const VerticalPadding(3),
                          Text5Title(_localization.phoneNum),
                          CustomFormField(
                            hint: '01025091652',
                            hasAboveTitle: false,
                            controller: nameController,
                          ),
                          const VerticalPadding(3),
                          Text5Title(_localization.password),
                          CustomFormField(
                            isSecure: true,
                            hint: '**********',
                            hasAboveTitle: false,
                            controller: nameController,
                          ),
                        ]);
                  }
                  return const Material();
                },
              )),
        ),
      ),
    ));
  }
}
