
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName,
  });

  final String coinName;


  @override
  Widget build(BuildContext context) {
  final theme = Theme.of(context);
 
    return ListTile(
        leading: Image.asset('assets/svg/bitcoin.svg', height: 30, width: 30,),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: (){
        Navigator.of(context).pushNamed(
         '/coin',
         arguments: coinName 
        );
        },

        iconColor: Colors.white,
     title:  Text(coinName, style: theme.textTheme.bodyMedium,),
     subtitle: Text('200000\$' , style: theme.textTheme.labelSmall,),
        );
  }
}




