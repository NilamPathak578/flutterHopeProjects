import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidget extends StatefulWidget {
  const WebViewWidget({Key? key}) : super(key: key);

  @override
  State<WebViewWidget> createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<WebViewWidget> {
  late WebViewController controller;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://flutterhope.com/',
        onWebViewCreated: (controller) {
          controller = controller;
        },
      )),
    );
  }
}
