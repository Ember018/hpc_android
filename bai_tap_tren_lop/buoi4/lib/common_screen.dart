import 'package:buoi4/common_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class CommonScreen extends StatefulWidget {
  const CommonScreen({super.key});

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  List<CommonItem> commonProducts = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadCommonProducts();
  }

  Future<void> _loadCommonProducts() async {
    try {
      final String response =
          await rootBundle.loadString('assets/common_products.json');

      final List<dynamic> data = jsonDecode(response);

      final List<CommonItem> loadedProducts = data.map((item) {
        return CommonItem.fromJson(item as Map<String, dynamic>);
      }).toList();

      if (mounted) {
        setState(() {
          _isLoading = false;
          commonProducts = loadedProducts;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        print("Unexpected error: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Common Products")),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 200,
              maxCrossAxisExtent: 250,
              mainAxisSpacing: 18.0,
              crossAxisSpacing: 18.0,
            ),
            itemCount: commonProducts.length,
            itemBuilder: (BuildContext context, index) {
              var commonProduct = commonProducts[index];
              return Center(
                child: (Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 200,
                        height: 150,
                        child: Image.network(
                          commonProduct.image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(commonProduct.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text("\$${commonProduct.price}"),
                    ])),
              );
            }));
  }
}
