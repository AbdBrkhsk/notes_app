import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:notes_app/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
          children:const [
            SizedBox(
              height: 60,
            ),
            CustomAppBar(),
            NoteItem()
          ],
      ),
    );
  }
}


class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFCC80)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children:  [
          ListTile(
              title: Text('Flutter Tips' ,style: TextStyle(
                color: Colors.black,fontSize: 26
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text('Build your carerr with tharwat samy ',style: TextStyle(
                  color: Colors.black.withOpacity(0.5),fontSize: 18
                ),),
              ),
              trailing: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,) ,),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 16 ),
            child: Text('May 22 ,2022',style: TextStyle(
                  color: Colors.black.withOpacity(0.5),fontSize: 14
                ),),
          )
        ],
      ),
    ) ;
  }
}