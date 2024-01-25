import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_now_wallet_app/widgets/vertical_spacer.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 标题及返回键
              Container(
                padding: EdgeInsets.all(15.w),
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
                          child:
                              SvgPicture.asset('assets/images/back_icon.svg'),
                        ),
                      ),
                    ),
                    Text(
                      'My Info',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                    ),
                  ],
                ),
              ),
              const VerticalSpacer(height: 32),
              // 头像
              Center(
                child: CircleAvatar(
                  backgroundColor: const Color(0xFFF3F4F5),
                  radius: 50.w,
                  child: Center(
                    child: SizedBox(
                      width: 24.w,
                      height: 24.w,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: SvgPicture.asset(
                            'assets/images/user_icon_active.svg'),
                      ),
                    ),
                  ),
                ),
              ),
              const VerticalSpacer(height: 16),
              // 可上传头像文字按钮
              Center(
                child: Text(
                  'Upload Image',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const VerticalSpacer(height: 32),
              // 用户名 标签
              Text(
                'User Name',
                style:
                    TextStyle(fontSize: 14.sp, color: const Color(0xFF1A1A1A)),
              ),
              const VerticalSpacer(height: 8),
              // 用户名 输入框
              TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.primary,
                ),
                cursorColor: Theme.of(context).colorScheme.primary,
                decoration: InputDecoration(
                  hintText: 'Enter your user name',
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.w),
                    borderSide: BorderSide(
                      color: const Color(0xFF1A1A1A).withOpacity(0.1),
                      width: 1.sp,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.w),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.sp),
                  ),
                ),
              ),
              const VerticalSpacer(height: 24),
              // E-mail 标签
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
              const VerticalSpacer(height: 8),
              // E-mail 输入框
              TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.primary,
                ),
                cursorColor: Theme.of(context).colorScheme.primary,
                decoration: InputDecoration(
                  hintText: "Enter your user email",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.w),
                    borderSide: BorderSide(
                      color: const Color(0xFF1A1A1A).withOpacity(0.1),
                      width: 1.sp,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.w),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1.sp,
                    ),
                  ),
                ),
              ),
              const VerticalSpacer(height: 24),
              // 手机号码 标签
              Text(
                "Mobile Number",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xFF1A1A1A),
                ),
              ),
              const VerticalSpacer(height: 8),
              // 手机号码 输入框
              TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Theme.of(context).colorScheme.primary,
                ),
                cursorColor: Theme.of(context).colorScheme.primary,
                decoration: InputDecoration(
                  hintText: "Enter your user mobile number",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.w),
                    borderSide: BorderSide(
                      color: const Color(0xFF1A1A1A).withOpacity(0.1),
                      width: 1.sp,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.w),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // 保存按钮
      bottomNavigationBar: Container(
        height: 81.h,
        width: 375.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.w),
              topRight: Radius.circular(20.w),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  offset: const Offset(0, -10),
                  blurRadius: 10),
            ]),
        child: Center(
          child: InkWell(
            onTap: () {},
            child: Container(
                height: 49.h,
                width: 345.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.w),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Save Changes",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
