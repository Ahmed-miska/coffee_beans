import 'package:coffee_beans/coffee_app.dart';
import 'package:coffee_beans/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(CoffeeApp(appRouter: AppRouter()));
}
