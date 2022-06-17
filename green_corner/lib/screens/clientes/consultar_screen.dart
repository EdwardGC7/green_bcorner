import 'package:flutter/material.dart';

class ConsultarScreen extends StatefulWidget {
  @override
  State<ConsultarScreen> createState() => _ConsultarScreenState();
}

class _ConsultarScreenState extends State<ConsultarScreen> {
  List<Item> _data = generateItems(30);

  Widget _buildListPanel() {
    return ExpansionPanelList(
        expansionCallback: (int index, bool is_expanded) {
          setState(() {
            _data[index].is_expanded = !is_expanded;
          });
        },
        children: _data.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
              headerBuilder: (BuildContext context, bool is_expanded) {
                return ListTile(
                  leading: Icon(Icons.person_outline_rounded),
                  title: Text(item.header_value),
                );
              },
              body: Column(
                children: [
                  cliente_container(
                    option: item.item_index,
                  ),
                ],
              ),
              isExpanded: item.is_expanded);
        }).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_list_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _buildListPanel(),
        ),
      ),
    );
  }
}

class Item {
  String expanded_value;
  String header_value;
  int item_index;
  bool is_expanded;

  Item(
      {required this.expanded_value,
      required this.header_value,
      required this.item_index,
      this.is_expanded = false});
}

List<Item> generateItems(int number_of_items) {
  return List.generate(
      number_of_items,
      (index) => Item(
          item_index: index,
          expanded_value: 'This is item number $index',
          header_value: 'Panel $index'));
}

//////////////////////////////////////
class cliente_container extends StatelessWidget {
  const cliente_container({
    Key? key,
    required this.option,
  }) : super(key: key);

  final int option;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 57.0,
      color: Color.fromARGB(255, 242, 243, 244),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 35.0,
                  color: Colors.grey,
                ),
                Center(
                  child: Text(
                    'Info',
                    style: TextStyle(fontSize: 10.0),
                  ),
                )
              ],
            )),
            // Expanded(
            //     child: Column(
            //   children: [
            //     Icon(
            //       Icons.group_add_outlined,
            //       size: 35.0,
            //       color: Colors.grey,
            //     ),
            //     Center(
            //       child: Text(
            //         'Grupo',
            //         style: TextStyle(fontSize: 10.0),
            //       ),
            //     )
            //   ],
            // )),
            Expanded(
                child: Column(
              children: [
                Icon(
                  Icons.edit_outlined,
                  size: 35.0,
                  color: Colors.grey,
                ),
                Center(
                  child: Text(
                    'Editar',
                    style: TextStyle(fontSize: 10.0),
                  ),
                )
              ],
            )),
            Expanded(
                child: Column(
              children: [
                Icon(
                  Icons.toggle_on_outlined,
                  size: 35.0,
                  color: Colors.green,
                ),
                Center(
                  child: Text(
                    'Estado',
                    style: TextStyle(fontSize: 10.0),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
