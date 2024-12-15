import 'package:flutter/material.dart';
import 'package:flutter_dev/core/di/dependency_injection.dart';
import 'package:flutter_dev/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

void main() async{
  setupGetIt();

  runApp(DocApp(appRouter: AppRouter()));
}
