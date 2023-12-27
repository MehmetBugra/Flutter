import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: ListTile(
          onTap: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) =>
                        BurcDetay(secilenBurc: listelenenBurc)));
          },
          autofocus: false,
          leading: Image.asset(
            // ignore: prefer_interpolation_to_compose_strings
            "images/" + listelenenBurc.burcKucukResim,
          ),
          title: Text(listelenenBurc.burcAdi),
          subtitle: Text(listelenenBurc.burcTarihi),
          trailing: const Icon(
            Icons.arrow_forward,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
