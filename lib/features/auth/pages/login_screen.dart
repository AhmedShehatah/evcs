import 'package:evcs/core/constants/custom_icons.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_button.dart';
import 'package:evcs/core/design/formfields/custom_form_field.dart';
import 'package:evcs/core/di/di_manager.dart';
import 'package:evcs/core/localization/cubit/locale_cubit.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:evcs/core/validators/email_validator.dart';
import 'package:evcs/core/validators/min_length_validator.dart';
import 'package:evcs/data/models/auth/sign_in_request.dart';
import 'package:evcs/features/auth/cubit/auth_cubit.dart';
import 'package:evcs/features/auth/pages/register_screen.dart';
import 'package:evcs/features/auth/widgets/auth_title.dart';
import 'package:evcs/features/auth/widgets/forgot_password.dart';
import 'package:evcs/features/auth/widgets/or_widget.dart';
import 'package:evcs/features/auth/widgets/switch_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final _localization = DIManager.findDep<LocaleCubit>().appLocalizations;
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
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
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const VerticalPadding(10),
                  AuthTitle(title: _localization.signIn),
                  const VerticalPadding(12),
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
                    controller: passwordController,
                    isSecure: true,
                    hint: _localization.enterPassword,
                    iconPath: CustomIcons.passowrdIcon,
                    validator: MinLengthValidator(minLength: 8),
                    title: _localization.password,
                  ),
                  const VerticalPadding(2),
                  ForogotPassword(),
                  const VerticalPadding(5),
                  AppDefaultButton(
                    onPress: () {
                      setState(() {
                        _autoValidateMode = AutovalidateMode.onUserInteraction;
                      });
                      if (formKey.currentState?.validate() ?? false) {
                        DIManager.findDep<AuthCubit>().signIn(SignInRequest(
                          email: emailController.text,
                          password: passwordController.text,
                        ));
                      }
                    },
                    title: DIManager.findDep<LocaleCubit>()
                        .appLocalizations
                        .signIn,
                    iconPath: CustomIcons.pinInRectIcon,
                  ),
                  const VerticalPadding(5),
                  OrWidget(),
                  const VerticalPadding(3),
                  SwitchAuth(
                    onPress: () {
                      DIManager.findNavigator()
                          .offAll(RegisterScreen.routeName);
                    },
                    title: _localization.signUp,
                    desc: _localization.dontHaveAcc,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
