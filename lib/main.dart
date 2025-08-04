import 'package:flutter/material.dart';
import 'package:wallet_app/features/auth/login/presentation/view/login_view.dart';

void main(){
  runApp(const WalletApp());
}


class WalletApp extends StatelessWidget{
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale("ar"),
      home: LoginView(),
    );
  }
}
