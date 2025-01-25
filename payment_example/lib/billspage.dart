import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BillsPage extends StatefulWidget {
  final String email;
  final String payment;
  const BillsPage({
    super.key,
    required this.email,
    required this.payment,
  });

  @override
  State<BillsPage> createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  late WebViewController controller;

  @override
  void initState() {
    String email = widget.email.toString();
    String payment = widget.payment.toString();
    print(widget.email.toString());
    print(widget.payment.toString());
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(
            'https://slumberjer.com/memberlink/api/bills.php?&email=${widget.email}&amount=${widget.payment}'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
