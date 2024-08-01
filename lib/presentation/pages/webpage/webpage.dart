import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/domain/core/constants/api_constants.dart';
import 'package:webview_flutter/webview_flutter.dart';


@RoutePage()
class CustomWebPage extends StatelessWidget {
  const CustomWebPage({super.key,
  required this.endPoint
  });
  final String endPoint;

  @override
  Widget build(BuildContext context) {
  final  controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
     
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {
     
      },
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://www.youtube.com/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(
    Uri.parse(
      ApiConstants.baseUrl1 + endPoint
      ));

    return SafeArea(
      child: Scaffold(
        appBar: null,
       body: WebViewWidget(controller: controller,
       
       ), 
      ),
    );
  }
}