import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sixam_mart/view/screens/html/about_us.dart';
import 'package:sixam_mart/view/screens/html/terms_and_condition.dart';

import '../../../controller/auth_controller.dart';
import '../../../helper/responsive_helper.dart';
import '../../../helper/route_helper.dart';
import '../../base/custom_app_bar.dart';
import '../address/address_screen.dart';
import '../auth/sign_in_screen.dart';
import '../auth/sign_up_screen.dart';
import '../coupon/coupon_screen.dart';
import '../html/html_viewer_screen.dart';
import '../onboard/onboarding_screen.dart';
import '../profile/profile_screen.dart';
import '../splash/splash_screen.dart';
import '../support/support_screen.dart';

class MenuScreen_2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    bool _isLoggedIn = Get.find<AuthController>().isLoggedIn();
    return Scaffold(
      appBar: CustomAppBar(title: 'Settings'.tr, backButton: ResponsiveHelper.isDesktop(context)),
      body: Column(
        children: [
          /*Container(
            width: double.infinity,
            color: kPrimaryblue,
            height: getProportionateScreenHeight(220),
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: kPrimaryblue,
              ),
              child: Observer(builder: (_) {
                return Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: getProportionateScreenHeight(50),
                      backgroundImage: _profileStore.userCurrentInfo?.pic_url !=
                          null
                          ? NetworkImage(
                          _profileStore.userCurrentInfo!.pic_url!)
                          : const NetworkImage(
                          'https://TheMoverscab.com/up-cmt/elementor/thumbs/logo-phjvc4co3lmepi3hmmo6zs6c355mbnp9i6f0w706vk.png'),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Text(
                      _profileStore.userCurrentInfo?.name ?? 'Set Profile',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),*/
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.account_circle,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: const Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(ProfileScreen());
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person_pin_circle,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: const Text(
                      'My Address',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  onTap: () async {
                    Get.to(AddressScreen());
                  },
                ),
                // ListTile(
                //   leading: const Icon(
                //     Icons.language,
                //     color: Colors.black54,
                //     size: 30,
                //   ),
                //   title: Padding(
                //     padding: EdgeInsets.only(
                //       top: 5,
                //     ),
                //     child: const Text(
                //       'Language',
                //       style: TextStyle(
                //         fontSize: 13,
                //       ),
                //     ),
                //   ),
                //   onTap: () {
                //
                //   },
                // ),
                ListTile(
                  leading: const Icon(
                    Icons.local_offer,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: const Text(
                      'Coupon',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(CouponScreen());
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.question_mark,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: const Text(
                      'Help & Support',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(SupportScreen());
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.receipt_long,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: const Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(HtmlViewerScreen());
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.info,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: const Text(
                      'About Us',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(AboutUs());
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.sticky_note_2,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: const Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(Terms());
                  },
                ),
                // ListTile(
                //   leading: const Icon(
                //     Icons.star_outline,
                //     color: Colors.black54,
                //     size: 30,
                //   ),
                //   title: Padding(
                //     padding: EdgeInsets.only(
                //       top: 5,
                //     ),
                //     child: const Text(
                //       'Give us Rating',
                //       style: TextStyle(
                //         fontSize: 13,
                //       ),
                //     ),
                //   ),
                //   onTap: () {
                //
                //   },
                // ),
                ListTile(
                  leading: const Icon(
                    Icons.logout_sharp,
                    size: 30,
                    color: Colors.black54,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      _isLoggedIn ? 'logout'.tr : 'sign_in'.tr,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(SignInScreen(exitFromApp: Get.parameters['page'] == SignUpScreen() || Get.parameters['page'] == SplashScreen() || Get.parameters['page'] == OnBoardingScreen(),));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


