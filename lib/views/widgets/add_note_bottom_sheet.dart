import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();

}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title , subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,

      child: Column(
        children:  [
          CustomTextField(
           onSaved: (value) {
             title = value;
           }, 
            hintText: 'Title',
          ),
         const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle= value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
        const  SizedBox(
            height: 32,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {
                
              });
            },
          ),
        const  SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
