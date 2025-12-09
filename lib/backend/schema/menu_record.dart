import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuRecord extends FirestoreRecord {
  MenuRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "combo" field.
  String? _combo;
  String get combo => _combo ?? '';
  bool hasCombo() => _combo != null;

  // "SKU" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "favorite" field.
  bool? _favorite;
  bool get favorite => _favorite ?? false;
  bool hasFavorite() => _favorite != null;

  void _initializeFields() {
    _combo = snapshotData['combo'] as String?;
    _sku = snapshotData['SKU'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _image = snapshotData['image'] as String?;
    _details = snapshotData['details'] as String?;
    _favorite = snapshotData['favorite'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menu');

  static Stream<MenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuRecord.fromSnapshot(s));

  static Future<MenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuRecord.fromSnapshot(s));

  static MenuRecord fromSnapshot(DocumentSnapshot snapshot) => MenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuRecordData({
  String? combo,
  String? sku,
  int? price,
  String? image,
  String? details,
  bool? favorite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'combo': combo,
      'SKU': sku,
      'price': price,
      'image': image,
      'details': details,
      'favorite': favorite,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuRecordDocumentEquality implements Equality<MenuRecord> {
  const MenuRecordDocumentEquality();

  @override
  bool equals(MenuRecord? e1, MenuRecord? e2) {
    return e1?.combo == e2?.combo &&
        e1?.sku == e2?.sku &&
        e1?.price == e2?.price &&
        e1?.image == e2?.image &&
        e1?.details == e2?.details &&
        e1?.favorite == e2?.favorite;
  }

  @override
  int hash(MenuRecord? e) => const ListEquality()
      .hash([e?.combo, e?.sku, e?.price, e?.image, e?.details, e?.favorite]);

  @override
  bool isValidKey(Object? o) => o is MenuRecord;
}
