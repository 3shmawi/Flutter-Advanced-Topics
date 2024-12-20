import 'package:flutter/material.dart';
import 'package:flutter_dev/core/helpers/spacing.dart';
import 'package:flutter_dev/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyListPage extends StatelessWidget {
  const EmptyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Illustration or Icon
          Icon(
            Icons.inbox,
            size: 100.h,
            color: ColorsManager.mainBlue,
          ),
          verticalSpace(20.h),

          // Title Text
          Text(
            'No Items Found!',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          verticalSpace(10),

          // Subtitle Text
          Text(
            'Looks like your list is empty.\nStart adding items to see them here.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
