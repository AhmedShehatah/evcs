import 'package:evcs/core/design/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdown extends StatelessWidget {
  final String title;
  final List<String> items;
  final Function(String) onItemSelected;

  const CustomDropdown({
    super.key,
    required this.title,
    required this.items,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Text5Title(
            title,
          ),
        ),
        const Divider(),
        ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text3Title(items[index]),
              onTap: () {
                onItemSelected(items[index]);
                Navigator.pop(context);
              },
            );
          },
        ),
      ],
    );
  }
}
