import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

// Pressing the PopupMenuButton on the right of this item shows

// a simple menu with one disabled item. Typically the contents

// of this "contextual menu" would reflect the app's state.

class _ContextMenuDemo extends StatelessWidget {

    const _ContextMenuDemo({Key key, this.showInSnackBar}) : super(key: key);

    final void Function(String value) showInSnackBar;

    @override

    Widget build(BuildContext context) {

        return ListTile(

            title: Text(GalleryLocalizations.of(context)

                    .demoMenuAnItemWithAContextMenuButton),

            trailing: PopupMenuButton<String>(

                padding: EdgeInsets.zero,

                onSelected: (value) => showInSnackBar(

                    GalleryLocalizations.of(context).demoMenuSelected(value),

                ),

                itemBuilder: (context) => <PopupMenuItem<String>>[

                    PopupMenuItem<String>(

                        value: GalleryLocalizations.of(context).demoMenuContextMenuItemOne,

                        child: Text(

                            GalleryLocalizations.of(context).demoMenuContextMenuItemOne,

                        ),

                    ),

                    PopupMenuItem<String>(

                        enabled: false,

                        child: Text(

                            GalleryLocalizations.of(context).demoMenuADisabledMenuItem,

                        ),

                    ),

                    PopupMenuItem<String>(

                        value:

                                GalleryLocalizations.of(context).demoMenuContextMenuItemThree,

                        child: Text(

                            GalleryLocalizations.of(context).demoMenuContextMenuItemThree,

                        ),

                    ),

                ],

            ),

        );

    }

}
