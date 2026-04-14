import 'package:doc_now/core/helpers/extentions.dart';
import 'package:doc_now/core/routing/routes.dart';
import 'package:doc_now/core/theming/colors.dart';
import 'package:doc_now/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.primary),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 48)
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        )
      ),
      child: Text('Get Started', style: TextStyles.font16whiteMid),
    );
  }
}
