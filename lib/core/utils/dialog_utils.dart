import 'package:flutter/material.dart';
import 'package:ocr_documents/shared/dialogs/referral_code_dialog.dart';

class DialogUtils {
  static Future<String?> showReferralCodeDialog(BuildContext context) async {
    final result = await showDialog<String?>(
      context: context,
      builder: (_) => ReferralCodeDialog(),
      barrierDismissible: false,
    );
    return result;
  }
}
