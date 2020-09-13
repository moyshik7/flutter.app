import 'package:flutter/cupertino.dart';

import 'package:gallery/l10n/gallery_localizations.dart';

class CupertinoSwitchDemo extends StatefulWidget {

    const CupertinoSwitchDemo();

    @override

    _CupertinoSwitchDemoState createState() => _CupertinoSwitchDemoState();

}

class _CupertinoSwitchDemoState extends State<CupertinoSwitchDemo> {

    bool _switchValue = false;

    @override

    Widget build(BuildContext context) {

        return CupertinoPageScaffold(

            navigationBar: CupertinoNavigationBar(

                automaticallyImplyLeading: false,

                middle: Text(

                    GalleryLocalizations.of(context).demoSelectionControlsSwitchTitle,

                ),

            ),

            child: Center(

                child: Semantics(

                    container: true,

                    label:

                            GalleryLocalizations.of(context).demoSelectionControlsSwitchTitle,

                    child: CupertinoSwitch(

                        value: _switchValue,

                        onChanged: (value) {

                            setState(() {

                                _switchValue = value;

                            });

                        },

                    ),

                ),

            ),

        );

    }

}
