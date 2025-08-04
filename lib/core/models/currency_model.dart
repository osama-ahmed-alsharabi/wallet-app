class CurrencyModel {
  final int id;
  final String code;
  final String name;

  CurrencyModel({required this.id, required this.code, required this.name});

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      id: json["id"],
      code: json["code"],
      name: json["name"],
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "code": code, "name": name};
  }
}
