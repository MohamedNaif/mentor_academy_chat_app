import 'package:flutter/material.dart';
import 'package:mentor_academy/core/constants/assets_image.dart';
import 'package:mentor_academy/core/constants/const.dart';
import 'package:mentor_academy/core/themes/app_color.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        // ignore: use_build_context_synchronously
        Navigator.pushReplacementNamed(context, loginView);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Image.asset(AssetsImage.blackBackground, fit: BoxFit.fill)),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          SizedBox(height: 230, child: Image.asset(AssetsImage.logo)),
          const Text(
            'WhatsUp',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.w700,
              color: AppColor.secondaryColor,
            ),
          ),
          const Spacer(),
          const Text(
            'The Best Chat App Of All Time',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColor.offWhite,
            ),
          ),
          const Spacer(),
        ],
      ),
    ]);
  }
}
