import 'package:flutter/material.dart';

import '../../../../core/constants/app-colors.dart';
class StepIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final Color? iconColor;
  const StepIcon({Key? key,required this.icon,required this.isActive,this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(icon,
      color:isActive?AppColors.mainColor:iconColor??Colors.grey,
    );
  }
}
