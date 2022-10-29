import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/common/colors.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/ui/widgets/card_restaurant.dart';
import 'package:flutter_application_1/ui/widgets/multi_platform.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  static const String favoriteTitle = 'Favorite';

  const FavoriteScreen({super.key});

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          favoriteTitle,
          style: navigationTextStyle,
        ),
      ),
      body: _buildList(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          favoriteTitle,
          style: navigationTextStyle,
        ),
      ),
      child: _buildList(),
    );
  }

  Widget _buildList() {
    return Consumer<DatabaseProvider>(
      builder: (context, provider, child) {
        if (provider.state == ResultState.hasData) {
          return ListView.builder(
            itemCount: provider.favorite.length,
            itemBuilder: (context, index) {
              return CardRestaurant(restaurant: provider.favorite[index]);
            },
          );
        } else {
          return Material(
            child: Center(
              child: Text(
                provider.message,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiPlatform(
        androidStyle: _buildAndroid,
        iosStyle: _buildIos,
      ),
    );
  }
}
