import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/doctors_list/doctros_bloc_builder.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/specializations_list/speciality_see_all.dart';
import 'widgets/specializations_list/specializations_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            20.0.w,
            16.0.h,
            20.0.w,
            28.0.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18.h),
              const SpecializationsBlocBuilder(),
              verticalSpace(8.h),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
