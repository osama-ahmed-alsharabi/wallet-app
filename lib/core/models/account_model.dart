import 'package:wallet_app/core/models/currency_model.dart';

class AccountModel {
  final int id;
  final String name;
  final double balance;
  final List<CurrencyModel> currencies;

  AccountModel({
    required this.id,
    required this.name,
    required this.balance,
    required this.currencies,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return AccountModel(
      id: json['id'],
      name: json["name"],
      balance: json["balance"],
      currencies: (json["currency"] as List)
          .map((e) => CurrencyModel.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "balance": balance,
      "currency": currencies.map((e) => e.toJson()).toList(),
    };
  }
}
