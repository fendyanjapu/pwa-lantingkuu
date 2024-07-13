import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key});

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://pwa-lantingkuu.baritokualakab.go.id'));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: SafeArea(
        child: Scaffold(
          body: WebViewWidget(
            controller: controller,
          ),
        ),
      ),
    );
  }
}
