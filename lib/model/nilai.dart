// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Nilai {
  String id;
  String makul;
  String dosen;
  Nilai({
    required this.id,
    required this.makul,
    required this.dosen,
  });

  Nilai copyWith({
    String? id,
    String? makul,
    String? dosen,
  }) {
    return Nilai(
      id: id ?? this.id,
      makul: makul ?? this.makul,
      dosen: dosen ?? this.dosen,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'makul': makul,
      'dosen': dosen,
    };
  }

  factory Nilai.fromMap(Map<String, dynamic> map) {
    return Nilai(
      id: map['id'] as String,
      makul: map['makul'] as String,
      dosen: map['dosen'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Nilai.fromJson(String source) =>
      Nilai.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Nilai(id: $id, makul: $makul, dosen: $dosen)';

  @override
  bool operator ==(covariant Nilai other) {
    if (identical(this, other)) return true;

    return other.id == id && other.makul == makul && other.dosen == dosen;
  }

  @override
  int get hashCode => id.hashCode ^ makul.hashCode ^ dosen.hashCode;
}
