import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now_wallet_app/widgets/horizontal_spacer.dart';
import 'package:pay_now_wallet_app/widgets/vertical_spacer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: 102.h,
              width: 375.w,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: Colors.black.withOpacity(0.1), width: 1.h),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: SvgPicture.asset(
                          "assets/images/back_icon.svg",
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Setting',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                  )
                ],
              ),
            ),
            const VerticalSpacer(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'General',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const VerticalSpacer(height: 16),
                  const OptionTitle(
                    icon: 'language_icon',
                    title: 'Langauge',
                    desc: 'Change the language of the app.',
                  ),
                  const VerticalSpacer(height: 16),
                  const OptionTitle(
                    icon: 'location_icon',
                    title: 'Locations',
                    desc: 'Add your home and work locations.',
                  ),
                  const VerticalSpacer(height: 24),
                  Container(
                    color: Colors.black.withOpacity(0.1),
                    width: 345.w,
                    height: 1.h,
                  ),
                  const VerticalSpacer(height: 24),
                  Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const VerticalSpacer(height: 16),
                  const OptionTitle(
                    icon: 'notifications _icon',
                    title: 'Push notifications',
                    desc: 'For daily update and others.',
                  ),
                  const VerticalSpacer(height: 16),
                  const OptionTitle(
                    icon: 'notifications _icon',
                    title: 'Promotional notifications',
                    desc: 'New campain and offers.',
                  ),
                  const VerticalSpacer(height: 24),
                  Container(
                    color: Colors.black.withOpacity(0.1),
                    width: 345.w,
                    height: 1.h,
                  ),
                  const VerticalSpacer(height: 24),
                  Text(
                    "More",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const VerticalSpacer(height: 16),
                  const OptionTitle(
                    icon: 'call_icon',
                    title: 'Contact Us',
                    desc: 'For more information',
                  ),
                  const VerticalSpacer(height: 16),
                  Row(
                    children: [
                      SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: SvgPicture.asset(
                            'assets/images/logout_icon.svg',
                          ),
                        ),
                      ),
                      const HorizontalSpacer(width: 16),
                      Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF1A1A1A),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OptionTitle extends StatelessWidget {
  const OptionTitle(
      {super.key, required this.icon, required this.title, required this.desc});

  final String icon;
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24.w,
          height: 24.h,
          child: FittedBox(
            fit: BoxFit.fill,
            child: SvgPicture.asset('assets/images/$icon.svg'),
          ),
        ),
        const HorizontalSpacer(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF1A1A1A),
              ),
            ),
            const VerticalSpacer(height: 8),
            Text(
              desc,
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF1A1A1A).withOpacity(0.5),
              ),
            )
          ],
        ),
      ],
    );
  }
}
