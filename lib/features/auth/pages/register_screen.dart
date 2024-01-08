import 'package:evcs/core/constants/custom_icons.dart';
import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/design/buttons/app_default_button.dart';
import 'package:evcs/core/design/formfields/custom_form_field.dart';
import 'package:evcs/core/di/di_manager.dart';
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
                  const AuthTitle(title: 'sign up'),
                  const VerticalPadding(10),
                  CustomFormField(
                    hasAboveTitle: true,
                    controller: firstNameController,
                    hint: 'Enter Your First Name',
                    iconPath: CustomIcons.userIcon,
                    title: 'First Name',
                    textInputType: TextInputType.text,
                    validator: RequiredValidator(),
                  ),
                  const VerticalPadding(5),
                  CustomFormField(
                    hasAboveTitle: true,
                    controller: lastNameController,
                    hint: 'Enter Your Last Name',
                    iconPath: CustomIcons.userIcon,
                    title: 'Last Name',
                    textInputType: TextInputType.text,
                    validator: RequiredValidator(),
                  ),
                  const VerticalPadding(5),
                  CustomFormField(
                    hasAboveTitle: true,
                    controller: emailController,
                    hint: 'Enter Your Email Address',
                    iconPath: CustomIcons.emailIcon,
                    title: 'E-mail Address',
                    textInputType: TextInputType.emailAddress,
                    validator: EmailValidator(),
                  ),
                  const VerticalPadding(5),
                  CustomFormField(
                    hasAboveTitle: true,
                    controller: phoneNumberController,
                    hint: 'Enter Your Phone Number',
                    iconPath: CustomIcons.userIcon,
                    title: 'Phone Number',
                    textInputType: TextInputType.phone,
                  ),
                  const VerticalPadding(5),
                  CustomFormField(
                    hasAboveTitle: true,
                    controller: passwordController,
                    isSecure: true,
                    hint: 'Enter Your Password',
                    iconPath: CustomIcons.passowrdIcon,
                    validator: MinLengthValidator(minLength: 8),
                    title: 'Password',
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
                    title: 'Sign Up',
                    iconPath: CustomIcons.pinInRectIcon,
                  ),
                  const VerticalPadding(5),
                  const OrWidget(),
                  const VerticalPadding(3),
                  SwitchAuth(
                    onPress: () {
                      DIManager.findNavigator().offAll(LoginScreen.routeName);
                    },
                    title: 'Sign In',
                    desc: "Already have an account?",
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
