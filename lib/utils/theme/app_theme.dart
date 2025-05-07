import 'package:flutter/material.dart';
import 'package:sebha/utils/colors/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(  
  scaffoldBackgroundColor: AppColors.ScaffoldBackColor,
  primaryColor: AppColors.zekrColor,

  iconTheme: IconThemeData(
    size: 50,
    color: AppColors.zekrColor,
  )
);
  
    

}
