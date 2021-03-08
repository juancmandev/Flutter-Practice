import 'package:intl/intl.dart';

String GetDate() {
  List months = [
    'Enero',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Diciembre',
  ];
  var now = new DateTime.now();
  int currentMonth = now.month - 1;
  String todayDate = months[currentMonth] + ', ' + now.year.toString();
  return (todayDate);
}
