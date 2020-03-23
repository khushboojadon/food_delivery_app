import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/Video.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Details extends StatefulWidget {
  Video lsvideo;
  Details({this.lsvideo});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
      @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.lsvideo.embed.html);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail'),),
        body: SafeArea(
          //video playing
      child: Container(
        height: 250,
        child: WebView(
          initialUrl:
              new Uri.dataFromString('${widget.lsvideo.embed.html}', mimeType: "text/html", encoding: utf8)
                  .toString(),
          javascriptMode: JavascriptMode.unrestricted,
          
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),
    ));
  }
}
