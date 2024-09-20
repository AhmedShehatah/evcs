import 'package:evcs/core/constants/custom_icons.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_button.dart';
import 'package:evcs/core/design/formfields/custom_form_field.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/localization/cubit/locale_cubit.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:evcs/core/validators/email_validator.dart';
import 'package:evcs/core/validators/min_length_validator.dart';
import 'package:evcs/core/validators/required_validator.dart';
import 'package:evcs/data/models/auth/sign_up_request.dart';
import 'package:evcs/features/auth/cubit/auth_cubit.dart';
import 'package:evcs/features/auth/pages/login_screen.dart';
import 'package:evcs/features/auth/widgets/auth_title.dart';
import 'package:evcs/features/auth/widgets/or_widget.dart';
import 'package:evcs/features/auth/widgets/switch_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register-screen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  final _localization = DIManager.findDep<LocaleCubit>().appLocalizations;

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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const VerticalPadding(10),
                  AuthTitle(title: _localization.signUp),
                  const VerticalPadding(10),
                  CustomFormField(
                    hasAboveTitle: true,
                    controller: firstNameController,
                    hint: _localization.enterFirstName,
                    iconPath: CustomIcons.userIcon,
                    title: _localization.firstName,
                    textInputType: TextInputType.text,
                    validator: RequiredValidator(),
                  ),
                  const VerticalPadding(5),
                  CustomFormField(
                    hasAboveTitle: true,
                    controller: lastNameController,
                    hint: _localization.enterLastName,
                    iconPath: CustomIcons.userIcon,
                    title: _localization.lastName,
                    textInputType: TextInputType.text,
                    validator: RequiredValidator(),
                  ),
                  const VerticalPadding(5),
                  CustomFormField(
                    hasAboveTitle: true,
                    controller: emailController,
                    hint: _localization.enterEmail,
                    iconPath: CustomIcons.emailIcon,
                    title: _localization.email,
                    textInputType: TextInputType.emailAddress,
                    validator: EmailValidator(),
                  ),
                  const VerticalPadding(5),
                  CustomFormField(
                    hasAboveTitle: true,
                    controller: phoneNumberController,
                    hint: _localization.enterPhone,
                    iconPath: CustomIcons.userIcon,
                    title: _localization.phoneNum,
                    textInputType: TextInputType.phone,
                  ),
                  const VerticalPadding(5),
                  CustomFormField(
                    hasAboveTitle: true,
                    controller: passwordController,
                    isSecure: true,
                    hint: _localization.enterPassword,
                    iconPath: CustomIcons.passowrdIcon,
                    validator: MinLengthValidator(minLength: 8),
                    title: _localization.password,
                  ),
                  const VerticalPadding(5),
                  AppDefaultButton(
                    onPress: () {
                      setState(() {
                        _autoValidateMode = AutovalidateMode.onUserInteraction;
                      });
                      if (formKey.currentState?.validate() ?? false) {
                        DIManager.findDep<AuthCubit>().signUp(SignUpRequest(
                            email: emailController.text,
                            password: passwordController.text,
                            phone: phoneNumberController.text,
                            firstName: firstNameController.text,
                            lastName: lastNameController.text));
                      }
                    },
                    title: _localization.signUp,
                    iconPath: CustomIcons.pinInRectIcon,
                  ),
                  const VerticalPadding(5),
                  OrWidget(),
                  const VerticalPadding(3),
                  SwitchAuth(
                    onPress: () {
                      DIManager.findNavigator().offAll(LoginScreen.routeName);
                    },
                    title: _localization.signIn,
                    desc: _localization.haveAcc,
                  ),
                  const VerticalPadding(10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
