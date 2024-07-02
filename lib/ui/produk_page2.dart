import 'package:latihan_flutter/bloc/logout_bloc.dart';
import 'package:latihan_flutter/bloc/produk_bloc.dart';
import 'package:latihan_flutter/model/produk.dart';
import 'package:flutter/material.dart';
import 'package:latihan_flutter/ui/login_page.dart';
import 'package:latihan_flutter/ui/produk_detail.dart';
import 'package:latihan_flutter/ui/produk form2.dart';

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
        title: const Text('List Produk'),
        actions: [
          Padding(padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                child: const Icon(Icons.add, size: 26.0),
                onTap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProdukForm()));
                },
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Logout'),
              trailing: const Icon(Icons.logout),
              onTap: () async {
                await LogoutBloc.logout().then((value) =>
                {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPage()))
                });
              },
            )
          ],
        ),
      ),

      body: FutureBuilder<List>(
        future: Produkbloc.getProduks(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListProduk(
            list: snapshot.data,
          )
              : const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class ListProduk extends StatelessWidget {
  final List? list;
  const ListProduk({Key? key, this.list}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list!.length,
      itemBuilder: (context, i) {
        return ItemProduk(produk: list![i],
    );
  });
}
}

  class ItemProduk extends StatelessWidget {
  final Produk produk;
  const ItemProduk({super.key, required this.produk});

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProdukDetail(
            produk: produk,
          )));
        },
        child: Card(
          child: ListTile(
            title: Text(produk.namaProduk!),
            subtitle: Text(produk.hargaProduk.toString()),
          ),
        ),
      );
    }
  }


