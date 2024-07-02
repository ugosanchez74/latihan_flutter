import 'package:flutter/material.dart';
import 'package:latihan_flutter/ui/detail_produk.dart';
import 'package:latihan_flutter/ui/produk_page.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHarga(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxKodeProduk(){
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxNamaProduk(){
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  _textboxHarga(){
    return TextField(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _hargaTextboxController,
    );
  }

  _tombolSimpan(){
    return ElevatedButton(
        onPressed: (){
          String kodeProduk = _kodeProdukTextboxController.text;
          String namaProduk = _namaProdukTextboxController.text;
          int harga = int.parse(
              _hargaTextboxController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProdukDetail(
              kodeProduk: kodeProduk,
              namaProduk: namaProduk,
              harga: harga,
          )));
          },
        child: const Text("Simpan"));

  }
}


  

