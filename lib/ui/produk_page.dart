import 'package:flutter/material.dart';
import 'package:latihan_flutter/ui/detail_produk.dart';
import 'package:latihan_flutter/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});
  
  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProdukForm()));
            },
          )
        ],
      ),
      body: ListView(
      children: const [
        Card(
          child: ListTile(
            title: Text('kulkas'),
            subtitle: Text ('2500000'),
  ),
),
        Card(
          child: ListTile(
            title: Text('TV'),
            subtitle: Text('5000000'),
          ),
          ),
        Card(
          child: ListTile(
            title: Text('Mesin Cuci'),
            subtitle: Text('1500000'),
          ),
        ),
      ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  const ItemProduk({super.key, required this.kodeProduk, required this.namaProduk, required this.harga});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
          onTap: (){
    Navigator.push(
    context,
    MaterialPageRoute(
    builder : (context)=> ProdukDetail(
    kodeProduk : kodeProduk,
    namaProduk : namaProduk,
    harga : harga,
    )));
    },
    )
    )
    );
          }
}

