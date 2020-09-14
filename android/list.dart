import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

enum ListDemoType {

  oneLine,

  twoLine,

}

class ListDemo extends StatelessWidget {

  const ListDemo({Key key, this.type}) : super(key: key);

  final ListDemoType type;

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        automaticallyImplyLeading: false,

        title: Text(GalleryLocalizations.of(context).demoListsTitle),

      ),

      body: Scrollbar(

        child: ListView(

          padding: const EdgeInsets.symmetric(vertical: 8),

          children: [

            for (int index = 1; index < 21; index++)

              ListTile(

                leading: ExcludeSemantics(

                  child: CircleAvatar(child: Text('$index')),

                ),

                title: Text(

                  GalleryLocalizations.of(context).demoBottomSheetItem(index),

                ),

                subtitle: type == ListDemoType.twoLine

                    ? Text(GalleryLocalizations.of(context).demoListsSecondary)

                    : null,

              ),

          ],

        ),

      ),

    );

  }

}
