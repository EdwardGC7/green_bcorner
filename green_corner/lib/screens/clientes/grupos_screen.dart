import 'package:flutter/material.dart';
import 'package:green_corner/theme/app_theme.dart';

class GruposScreen extends StatelessWidget {
  const GruposScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grupos de clientes'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 46.0),
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text('grupo de elementos ${index}'),
                  leading: Icon(Icons.groups_outlined),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.info_outline)),
                ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: 20),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppTheme.primary)),
        child: FloatingActionButton(
          elevation: 3,
          highlightElevation: 0,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 40,
          ),
          backgroundColor: Colors.white,
          foregroundColor: AppTheme.primary,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
