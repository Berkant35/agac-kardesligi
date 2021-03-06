import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../gerecler/resim_yollari.dart';
import '../ui/paylasim_sayfasi/paylasim_body/paylasim_arka_plan.dart';
import '../ui/paylasim_sayfasi/paylasim_ust/ust_bilgi.dart';
import '../ui/safe_arka.dart';

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArka(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(FirebaseAuth.instance.currentUser.uid),
              UstBilgi(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: paylasimArkaPlan(
                  resim: paylasimResim(),
                  altSatir: paylasimAltRow(
                    photoUrl: ResimYollari.tohumResim,
                    kullaniciAdi: "Ahmet",
                    dikilen: "tohum",
                    begeniSayisi: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
