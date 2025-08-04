import 'package:wallet_app/core/models/account_model.dart';
import 'package:wallet_app/core/models/sessions_model.dart';

class User {
  int? id;
  String? type;
  String? name;
  AccountModel? account;
  bool? active;
  DateTime? updatedAt;
  DateTime? createdAt;
  String? email;
  List<Sessions>? sessions;
  String? collection;
  String? sStrategy;
  int? loginAttempts;

  User({
    this.id,
    this.type,
    this.name,
    this.account,
    this.active,
    this.updatedAt,
    this.createdAt,
    this.email,
    this.sessions,
    this.collection,
    this.sStrategy,
    this.loginAttempts,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      type: json["type"],
      name: json["name"],
      account: json["account"] == null
          ? null
          : AccountModel.fromJson(json["account"]),
      active: json["active"],
      updatedAt: DateTime.parse(json["updatedAt"]),
      createdAt: DateTime.parse(json["createdAt"]),
      email: json["email"],
      sessions: (json["sessions"] as List)
          .map((e) => Sessions.fromJson(e))
          .toList(),
      collection: json["collection"],
      sStrategy: json["_strategy"],
      loginAttempts: json['loginAttempts'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "type": type,
      "name": name,
      "account": account,
      "active": active,
      "updatedAt": updatedAt.toString(),
      "createdAt": createdAt.toString(),
      "email": email,
      "sessions": sessions!.map((e) => e.toJson()).toList(),
      "collection": collection,
      "_strategy": sStrategy,
      "loginAttempts": loginAttempts,
    };
  }
}
