import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:const  [
          SizedBox(
            height: 60,
          ),
           CustomAppBar(title: 'Edit Note', icon: Icons.check,),
           SizedBox(
            height: 50,
          ),
            CustomTextField(hintText: 'Title'),
            SizedBox(
            height: 16,
          ),
            CustomTextField(hintText: 'Content', maxLines: 5,)  
        ],
      ),
    );
  }
}