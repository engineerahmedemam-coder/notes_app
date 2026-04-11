import 'package:flutter/material.dart';
import 'package:notes/widgets/add_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

class ShowModalContainer extends StatelessWidget {
  const ShowModalContainer({
    super.key,
  });



  @override 
  Widget build(BuildContext context) {
       return FormField();
      
  }
}

class FormField extends StatefulWidget {
  const FormField({super.key});

  @override
  State<FormField> createState() => _FormFieldState();
}

class _FormFieldState extends State<FormField> {
    final GlobalKey<FormState>  globalKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child:  SingleChildScrollView(
             child: Column(
              children: [
                CustomTextField(hintText: 'tiltle', onSaved: (value) {
                  title = value;
                },),
                CustomTextField(hintText: 'content', maxLines: 8, onSaved: (value) {
                  subtitle = value;
                },),
                AddButton(
                  onTap: () {
                    if (globalKey.currentState!.validate()){
                      globalKey.currentState!.save();
                    }else{
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {
                        
                      });
                    }
                  },
                )
              ],
             ),
           ),
    );
  }
}


