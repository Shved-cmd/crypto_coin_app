
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/repositories/crypto_coins/crypto_coins_repo.dart';
import 'package:flutter_learning/repositories/crypto_coins/models/crypto_coin_model.dart';

import '../widgets/crypto_coin_tile.dart';



class CryptoCurrenListScreen extends StatefulWidget {
  const CryptoCurrenListScreen({super.key});

  @override
  State<CryptoCurrenListScreen> createState() => _CryptoCurrenListScreenState();
}

class _CryptoCurrenListScreenState extends State<CryptoCurrenListScreen> {


    List<CryptoCoin>? _cryptoCoinsList;

  @override
  Widget build(BuildContext context) {
  final coinName = 'Bitcoin';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CryptoCurrenListScreen List'),
      ),
      body: 
      (_cryptoCoinsList == null ) 
      ? const SizedBox() :
      
      ListView.separated(
        itemCount: _cryptoCoinsList!.length, 
        separatorBuilder:(context, index) =>  Divider(),
        itemBuilder: (context, i) {
         return CryptoCoinTile(coinName: coinName);
        }
      ),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.download) ,onPressed: () async {
         _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
            
      }),
    );
  }
}
