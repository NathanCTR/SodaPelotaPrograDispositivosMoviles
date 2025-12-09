import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoCarritoRecord extends FirestoreRecord {
  ProductoCarritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "subtotal" field.
  int? _subtotal;
  int get subtotal => _subtotal ?? 0;
  bool hasSubtotal() => _subtotal != null;

  void _initializeFields() {
    _sku = snapshotData['sku'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _imagen = snapshotData['imagen'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _subtotal = castToType<int>(snapshotData['subtotal']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productoCarrito');

  static Stream<ProductoCarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductoCarritoRecord.fromSnapshot(s));

  static Future<ProductoCarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductoCarritoRecord.fromSnapshot(s));

  static ProductoCarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductoCarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductoCarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductoCarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductoCarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductoCarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductoCarritoRecordData({
  String? sku,
  String? nombre,
  int? precio,
  int? cantidad,
  String? imagen,
  DocumentReference? usuario,
  int? subtotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sku': sku,
      'nombre': nombre,
      'precio': precio,
      'cantidad': cantidad,
      'imagen': imagen,
      'usuario': usuario,
      'subtotal': subtotal,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductoCarritoRecordDocumentEquality
    implements Equality<ProductoCarritoRecord> {
  const ProductoCarritoRecordDocumentEquality();

  @override
  bool equals(ProductoCarritoRecord? e1, ProductoCarritoRecord? e2) {
    return e1?.sku == e2?.sku &&
        e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.cantidad == e2?.cantidad &&
        e1?.imagen == e2?.imagen &&
        e1?.usuario == e2?.usuario &&
        e1?.subtotal == e2?.subtotal;
  }

  @override
  int hash(ProductoCarritoRecord? e) => const ListEquality().hash([
        e?.sku,
        e?.nombre,
        e?.precio,
        e?.cantidad,
        e?.imagen,
        e?.usuario,
        e?.subtotal
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductoCarritoRecord;
}
