import 'package:evcs/core/constants/dimens.dart';
import 'package:evcs/core/utils/localization/app_localizations.dart';
import 'package:evcs/core/utils/ui/widgets/utils/horizontal_padding.dart';
import 'package:evcs/core/utils/ui/widgets/utils/vertical_padding.dart';
import 'package:evcs/core/validators/base_validator.dart';
import 'package:evcs/core/validators/required_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_style.dart';

class CustomFormField extends StatefulWidget {
  const CustomFormField({
    super.key,
    required this.hasAboveTitle,
    required this.controller,
    this.title,
    this.iconPath,
    this.action = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.validator,
    required this.hint,
    this.isSecure = false,
    this.disabled = false,
    this.suffix = null,
  });

  final bool hasAboveTitle;
  final TextEditingController controller;
  final String? title;
  final String? iconPath;
  final TextInputAction action;
  final TextInputType textInputType;
  final BaseValidator? validator;
  final String hint;
  final bool isSecure;
  final bool disabled;
  final Widget? suffix;

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool _obscuredPassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.hasAboveTitle)
          Row(
            children: [
              SvgPicture.string(
                widget.iconPath!,
                width: Dimens.bigIconSize,
              ),
              const HorizontalPadding(2),
              Text(
                translate(widget.title!),
                style: AppStyle.titleStyle,
              ),
            ],
          ),
        const VerticalPadding(1.5),
        TextFormField(
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          controller: widget.controller,
          keyboardType: widget.textInputType,
          textInputAction: widget.action,
          validator: (value) {
            return BaseValidator.validateValue(
              context,
              value,
              [
                widget.validator ?? RequiredValidator(),
              ],
              true,
            );
          },
          enabled: !widget.disabled,
          maxLines: 1,
          minLines: 1,
          decoration: AppStyle.inputDecoration(
            suffixIcon: widget.suffix,
            hintText: translate(widget.hint),
            obscuring: widget.isSecure ? _obscuredPassword : null,
            onObscurePressed: widget.isSecure
                ? () {
                    setState(() => _obscuredPassword = !_obscuredPassword);
                  }
                : null,
          ),
          obscureText: widget.isSecure ? _obscuredPassword : false,
        ),
      ],
    );
  }
}
