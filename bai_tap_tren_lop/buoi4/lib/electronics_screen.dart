import 'package:buoi4/electronic_item.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart'; // for rootBundle

class ElectronicsScreen extends StatefulWidget {
  const ElectronicsScreen({super.key});

  @override
  State<ElectronicsScreen> createState() => _ElectronicScreenState();
}

class _ElectronicScreenState extends State<ElectronicsScreen> {
  List<ElectronicItem> electronicProducts = [];
  bool _isLoading = true; // just to show the loading indicator

  @override
  void initState() {
    super.initState();
    _loadElectronicProducts();
  }

  Future<void> _loadElectronicProducts() async {
    try {
      // Load JSON string from the assets
      final String response =
          await rootBundle.loadString('assets/electronic_products.json');

      // Decode JSON string
      final List<dynamic> data = jsonDecode(response);

      // Map the dynamic list to a List<ElectronicItem> and Ensure that each item in 'data' is Map<String, dynamic>. just functional programming stuff with map and lambda... tks god it's not recursion
      final List<ElectronicItem> loadedProducts = data.map((item) {
        return ElectronicItem.fromJson(item as Map<String, dynamic>);
      }).toList();

      // Update the state with loaded products
      if (mounted) {
        // Check if the widget still in the tree
        setState(() {
          electronicProducts = loadedProducts;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
      print("Error loading electronic products: $e");
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Failed to lead products: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Sản phẩm")),
        body: _isLoading
            ? const CircularProgressIndicator()
            : GridView.builder(
                itemCount: electronicProducts.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  mainAxisExtent: 250,
                ),
                itemBuilder: (BuildContext context, index) {
                  var electronicProduct = electronicProducts[index];
                  return Card(
                    color: Colors.teal[200],
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 200,
                              height: 100,
                              child: Image.network(
                                electronicProduct.image,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            const SizedBox(height: 40),
                            Text(electronicProduct.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            Text("${electronicProduct.price} VND")
                          ]),
                    ),
                  );
                }));
  }
}
