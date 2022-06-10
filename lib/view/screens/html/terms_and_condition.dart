import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../controller/splash_controller.dart';
import '../../base/custom_app_bar.dart';
import '../../base/menu_drawer.dart';
class Terms extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'terms_conditions'.tr),
      endDrawer: MenuDrawer(),
      body: GetBuilder<SplashController>(builder: (splashController) {
        return Center(
          child: WebView(
            initialUrl: "https://delvri.com/terms-conditions",
            javascriptMode: JavascriptMode.unrestricted,
          ),
        );
      }),
    );
  }
}
