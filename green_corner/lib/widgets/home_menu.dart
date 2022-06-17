import 'package:flutter/material.dart';
//import 'package:green_corner/screens/cobradores_screen.dart';
import 'package:green_corner/screens/screens.dart';
import 'package:green_corner/theme/app_theme.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  final menu_options = const [
    'Clientes',
    'Prestamos',
    'Pagos',
    'Empleados',
    'Zonas',
    'Cuadre',
    'Configuracion',
    'Salir',
  ];

  @override
  Widget build(BuildContext context) {
    _onSelectItem(dynamic ventana) {
      Navigator.of(context).pop();
      Navigator.push(context, menu_route(ventana));
      setState(() {});
    }

    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('nombre de usuario'),
            accountEmail: Text('emailuser@algo.com'),
            currentAccountPicture: CircleAvatar(
              maxRadius: 50,
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/485108590265782274/XDuVc00C_400x400.jpeg'),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle_outlined,
              color: AppTheme.primary,
            ),
            title: Text(menu_options[0]), //Clientes
            onTap: () {
              _onSelectItem(ClientesScreen());
            },
          ),
          menu_divider(),
          ListTile(
            leading: Icon(
              Icons.monetization_on_outlined,
              color: AppTheme.primary,
            ),
            title: Text(menu_options[1]), //Prestamos
            onTap: () {
              _onSelectItem(PrestamosScreen());
            },
          ),
          menu_divider(),
          ListTile(
            leading: Icon(
              Icons.receipt_long_outlined,
              color: AppTheme.primary,
            ),
            title: Text(menu_options[2]), //Pagos
            onTap: () {
              _onSelectItem(PagosScreen());
            },
          ),
          menu_divider(),
          ListTile(
            leading: Icon(
              Icons.quick_contacts_mail_outlined,
              color: AppTheme.primary,
            ),
            title: Text(menu_options[3]), //Cobradores
            onTap: () {
              _onSelectItem(RegistrarEmpleadoScreen());
              //_onSelectItem(CobradoresScreen());
            },
          ),
          menu_divider(),
          ListTile(
            leading: Icon(
              Icons.map_outlined,
              color: AppTheme.primary,
            ),
            title: Text(menu_options[4]), //Zonas
            onTap: () {
              _onSelectItem(ZonasScreen());
            },
          ),
          menu_divider(),
          ListTile(
            leading: Icon(
              Icons.cases_outlined,
              color: AppTheme.primary,
            ),
            title: Text(menu_options[5]), //Cuadre
            onTap: () {
              _onSelectItem(CuadreScreen());
            },
          ),
          menu_divider(),
          ListTile(
            leading: Icon(
              Icons.build_circle_outlined,
              color: AppTheme.primary,
            ),
            title: Text(menu_options[6]), //Configuracion
            onTap: () {
              _onSelectItem(ConfiguracionScreen());
            },
          ),
          menu_divider(),
          ListTile(
            leading: Icon(
              Icons.logout_sharp,
              color: AppTheme.primary,
            ),
            title: Text(menu_options[7]), //Configuracion
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Divider menu_divider() {
    return const Divider(
      thickness: 0.2,
      indent: 20,
    );
  }

  dynamic menu_route(ruta) {
    return MaterialPageRoute(builder: (context) => ruta);
  }
}
