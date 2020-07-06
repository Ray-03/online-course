import 'package:flutter/material.dart';
import 'package:kantongilmu/constants.dart';

class FormInput extends StatefulWidget {
  FormInput({
    @required this.hint,
//    @required this.onSaved,
    @optionalTypeArgs this.inputType = TextInputType.text,
    @optionalTypeArgs this.isObscured = false,
    @optionalTypeArgs this.validator,
    @optionalTypeArgs this.icon,
    @optionalTypeArgs this.controller,
    @required this.focusNode,
    @optionalTypeArgs this.onFieldSubmitted,
  });
//  final Function onSaved, validator;
  final Function validator;
  final String hint;
  final bool isObscured;
  final TextInputType inputType;
  final IconData icon;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function onFieldSubmitted;

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  bool _isNotVisible;
//  FocusNode _formFocusNode;
  @override
  void initState() {
    _isNotVisible = widget.isObscured ?? false;
//    _formFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        controller: widget.controller,
        focusNode: widget.focusNode,
        validator: widget.validator,
//        onChanged: widget.onSaved,
        obscureText: _isNotVisible,
        keyboardType: widget.inputType,
        textAlign: TextAlign.center,
//        cursorColor:
//            widget.focusNode.hasFocus ? Color(0XFF3F2F24) : Color(0XFFDA9E5F),
        onFieldSubmitted: widget.onFieldSubmitted,
        decoration: kTextFieldDecor.copyWith(
          labelText: widget.hint,
//          focusColor: Colors.red,
          prefixIcon: Icon(widget.icon),
          suffix: widget.isObscured
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _isNotVisible = !_isNotVisible;
                    });
                  },
                  child: Icon(
                      _isNotVisible ? Icons.visibility : Icons.visibility_off),
                )
              : null,
        ),
      ),
    );
  }
}
