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
    _navigateToHome();
  }

  void _navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          Navigator.pushReplacementNamed(context, loginView);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _buildBackgroundImage(context),
      _buildContent(),
    ]);
  }

  Widget _buildContent() {
    return Column(
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
    );
  }

  Widget _buildBackgroundImage(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Image.asset(AssetsImage.blackBackground, fit: BoxFit.fill));
  }
}
