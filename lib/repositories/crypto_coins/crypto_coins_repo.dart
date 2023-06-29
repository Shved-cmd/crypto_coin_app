import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'models/crypto_coin_model.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
      final response = await Dio().get( "https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,BNB,AVAX&tsyms=USD,EUR");
      debugPrint(response.toString());
      final data = response.data as Map<String, dynamic>; // переводим возвращаемое значение в мапу 
      final dataList = data.entries.map((e) => CryptoCoin(e.key, (e.value as Map<String, dynamic>)['USD'],)).toList();
      return dataList;
  }
}