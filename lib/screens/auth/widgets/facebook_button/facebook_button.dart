import 'package:flutter/material.dart';
import 'package:flutter_folder_structure/widgets/app_button/index.dart';
import 'package:toast/toast.dart';

import '../webview.dart';



class FacebookButton extends StatelessWidget {
  final String url;

  const FacebookButton({Key key, this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new AppButton(
      buttonName: "facebook",
      onPressed:() {
        Navigator.of(context).push(
            MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new WebViewWebPage(url: url);
            }));
        Toast.show(url, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);

      }
    );
  }
}