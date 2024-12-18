import 'package:flutter/material.dart';
import 'package:flutter_dev/core/di/dependency_injection.dart';
import 'package:flutter_dev/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

//test20@gmail.com
//Omar@123
void main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenUtil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
