import 'package:flutter/material.dart';
import 'package:flutter_application_1/State_Management/Provider/produk_model.dart';

class ProdukProvider extends ChangeNotifier {
  List<Produk> list = List.generate(
    30,
    (index) => Produk("B-$index", "Produk-$index", "Deskripsi Produk-$index",
        "https://picsum.photos/id/$index/200/300", 25000),
  );
  List<Produk> get getList => list;
}
