import 'package:flutter/material.dart';

TextEditingController inputController = TextEditingController();

class ReferralCodeDialog extends StatelessWidget {
  const ReferralCodeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          'Mã giới thiệu',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Nhập mã giới thiệu để đăng nhập'),
      ),
      content: TextFormField(
        controller: inputController,
        decoration: InputDecoration(hintText: 'Nhập mã giới thiệu...'),
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context, inputController.text);
          },
          child: Text('Xác nhận'),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Hủy bỏ'),
        ),
      ],
    );
  }
}
