import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier {
  String mail = '';
  String password = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // バリデーション
  void checkVal() {
    if (mail.isEmpty) {
      throw ('メールアドレスを入力してください。');
    }
    if (password.isEmpty) {
      throw ('パスワードを入力してください。');
    }
  }

  // ログイン
  Future login() async {
    checkVal();

    // ログイン
    await _auth.signInWithEmailAndPassword(
      email: mail,
      password: password,
    );
  }
}
