import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  const ProdukDetail({super.key, required this.kodeProduk, required this.namaProduk, required this.harga});

  @override
  State<ProdukDetail> createState() =>_ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Detail Produk'),
        ),
    body: Column(
    children: [
    Text("Kode Produk : " + widget.kodeProduk.toString()),
    Text("Nama Produk : ${widget.namaProduk}"),
    Text("Harga : ${widget.harga}")
    ],
    ),
    );
  }
}
