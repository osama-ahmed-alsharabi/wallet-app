import 'package:flutter/material.dart';

void main(){
  runApp(const WalletApp());
}


class WalletApp extends StatelessWidget{
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(),
    );
  }
}
