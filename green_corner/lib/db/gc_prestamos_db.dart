import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class GCPrestamosDB {
  static var sqlCollection = [
    """
        CREATE TABLE clientes (
          id INTEGER PRIMARY KEY, name TEXT, lastname TEXT, identification TEXT, foto TEXT, house_address TEXT, house_phone TEXT, mobile_phone TEXT, reference TEXT, client_group INTEGER, zone INTEGER, occupation TEXT, business TEXT, job_address TEXT, job_phone TEXT, credit_limit REAL, status INTEGER, comment TEXT, createdAt TEXT, updatedAt TEXT, softDelete INTEGER
        )
      """,
    """
        CREATE TABLE grupos_de_clientes (
          id INTEGER PRIMARY KEY, name TEXT, description TEXT, createdAt TEXT, updatedAt TEXT, softDelete INTEGER
        )
      """,
    """
        CREATE TABLE prestamos (
          id INTEGER PRIMARY KEY, code TEXT, client INTEGER, loan_type TEXT, loan_amount REAL, percentage REAL, payment_type TEXT, loan_time TEXT, reference INTEGER, zone INTEGER, debt_collector INTEGER, first_payment_date TEXT, createdAt TEXT, updatedAt TEXT, softDelete INTEGER
        )
      """,
    """
        CREATE TABLE pagares (
          id INTEGER PRIMARY KEY, client INTEGER, loan_code TEXT, payment_amount REAL, capital_amount REAL, interest_amount REAL, payment_date TEXT, createdAt TEXT, updatedAt TEXT, softDelete INTEGER
        )
      """,
    """
        CREATE TABLE pagos (
          id INTEGER PRIMARY KEY, client INTEGER, loan_code TEXT, payment_fee REAL, previous_payment_fee REAL, previous_capital REAL, previous_interest REAL, paid_fee REAL, paid_capital REAL, paid_interest REAL, createdAt TEXT, updatedAt TEXT, softDelete INTEGER
        )
      """,
    """
        CREATE TABLE cobradores (
          id INTEGER PRIMARY KEY, foto TEXT, name TEXT, lastname TEXT, identification TEXT, address TEXT, phone_number TEXT, status INTEGER, createdAt TEXT, updatedAt TEXT, softDelete INTEGER
        )
      """,
    """
        CREATE TABLE zonas (
          id INTEGER PRIMARY KEY, name TEXT, city TEXT, address TEXT, createdAt TEXT, updatedAt TEXT, softDelete INTEGER
        )
      """,
    """
        CREATE TABLE cuadres (
          id INTEGER PRIMARY KEY, loan_type TEXT, zone INTEGER, user TEXT, drawer_closure_date TEXT, expected_total_amount REAL, expected_capital REAL, expected_interest REAL, received_amount REAL, received_capital REAL, received_interest REAL, createdAt TEXT, updatedAt TEXT, softDelete INTEGER
        )
      """,
    """
        CREATE TABLE info_empresa (
          id INTEGER PRIMARY KEY, company_logo Text, company_code TEXT, company_initials TEXT, company_name TEXT, responsible TEXT, rnc TEXT, address TEXT, phone_number1 TEXT, phone_number2 TEXT, createdAt TEXT, updatedAt TEXT, softDelete INTEGER
        )
      """,
    """
        CREATE TABLE usuarios (
          id INTEGER PRIMARY KEY, foto TEXT, name TEXT, lastname TEXT, username TEXT, password TEXT, email TEXT, role TEXT, status INTEGER, createdAt TEXT, updatedAt TEXT, softDelete INTEGER
        )
      """,
    """
        CREATE TABLE configuracion (
          id INTEGER PRIMARY KEY
        )
      """
  ];

  // static Future<Database> _openDB() async {
  //   return openDatabase(join(await getDatabasesPath(), 'gc_prestamos_db.db'),
  //       onCreate: (db, version) {
  //     return ejecutar(db);
  //   }, version: 1);
  // }

  // static Future<Database> getDatabase() {
  //   return _openDB();
  // }

  static ejecutar(paramDB) {
    for (String sql in sqlCollection) {
      paramDB.execute(sql);
    }
    ;
  }
}
