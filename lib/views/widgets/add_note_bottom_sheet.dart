import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children:const [
          CustomTextField(hintText:'Title',),
          SizedBox(height: 15,),
          CustomTextField(hintText: 'Content', maxLines: 5,)
        ],
      ),
    );
  }
}