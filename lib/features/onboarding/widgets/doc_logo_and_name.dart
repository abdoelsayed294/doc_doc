import 'package:doc_now/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docnow_logo.svg'),
        Text(
          'DocNow',
          //copy with to add in styyle instead of creating a new style
          style: TextStyles.font16BlueMid.copyWith(height: 1.5),
        ),
      ],
    );
  }
}