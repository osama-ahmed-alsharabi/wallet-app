
class Sessions {
  String? id;
  DateTime? createdAt;
  DateTime? expiresAt;

  Sessions({this.id, this.createdAt, this.expiresAt});

  factory Sessions.fromJson(Map<String, dynamic> json) {
    return Sessions(
      id: json['id'],
      createdAt: DateTime.parse(json["createdAt"]),
      expiresAt: DateTime.parse(json["expiresAt"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "createdAt": createdAt.toString(),
      "expiresAt": expiresAt.toString(),
    };
  }
}
