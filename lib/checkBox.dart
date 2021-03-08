import 'package:flutter/material.dart';

class LabeledChecbox extends StatelessWidget {
  const LabeledChecbox({
    this.label,
    this.padding,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Checkbox(
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
            Expanded(
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCheckbox extends StatefulWidget {
  MyCheckbox({Key key}) : super(key: key);

  @override
  _MyCheckbox createState() => _MyCheckbox();
}

class _MyCheckbox extends State<MyCheckbox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return LabeledChecbox(
      label: 'Recordar Contraseña',
      padding: const EdgeInsets.symmetric(horizontal: 45.0),
      value: _isSelected,
      onChanged: (bool newValue) {
        setState(() {
          _isSelected = newValue;
        });
      },
    );
  }
}
