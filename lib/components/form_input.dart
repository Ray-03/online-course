import 'package:flutter/material.dart';
import 'package:kantongilmu/constants.dart';

///[FormInput] is used for create form field
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

  ///[isObscured] is used to check either this form needs to be obscured, and let user change visibility
  ///[focusNode] is used so that form know which form focus is on
  ///[onFieldSubmitted] decide events when the form is submitted
  ///[validator] to validate input in [FormInput]
  ///[icon] is leading of the field
  ///[hint] placeholder and label for the form
  ///[controller] check input of field
  ///[inputType] change keyboard preferences based on form field

  final bool isObscured;
  final FocusNode focusNode;
  final Function onFieldSubmitted;
  final Function validator;
  final IconData icon;
  final String hint;
  final TextEditingController controller;
  final TextInputType inputType;
//  final Function onSaved;

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

          ///check if widget is obscured, then show visibility/visibility_off button.
          ///else, do not show visibility/visibility_off button
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
