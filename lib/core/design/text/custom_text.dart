import 'package:evcs/core/constants/app_style.dart';
import 'package:flutter/material.dart';

class Text5Title extends Text {
  const Text5Title(super.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      style: AppStyle.title5Style,
    );
  }
}

class Text4Title extends Text {
  const Text4Title(super.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      style: AppStyle.title4Style,
    );
  }
}

class Text3Title extends Text {
  const Text3Title(super.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      style: AppStyle.title3Style,
    );
  }
}

class Text2Title extends Text {
  const Text2Title(super.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      style: AppStyle.title2Style,
    );
  }
}
