import 'package:flutter/material.dart';
import 'package:flutter_application_1/State_Management/Provider/produk_model.dart';
import 'package:flutter_application_1/State_Management/Provider/produk_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    ProdukProvider pp = ProdukProvider();
    List<Produk> list = pp.getList;
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management - Provider"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GridTile(
                footer: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 32,
                      ),
                      Text(
                        list[index].nama,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 32,
                      ),
                    ],
                  ),
                ),
                child: Image.network(
                  list[index].linkIMG,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}
