import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class CustomSnackBar {
  static show(BuildContext context,String message, ContentType contentType) {
     SnackBar snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: contentType == ContentType.success
            ? 'Well !'
            : contentType == ContentType.failure
                ? "Failure"
                : "Warning",
        message: message,
        contentType: contentType,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
