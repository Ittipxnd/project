import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mart3/option/flutter_flow_theme.dart';
import 'package:mart3/two/FFButtonWidget.dart';
// import 'package:flutter_flow/flutter_flow_icon_button.dart';
//  import 'package:flutter_flow/flutter_flow_theme.dart';
//  import 'package:flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter_flow/flutter_flow_util.dart';
import 'package:mart3/two/home_model.dart';
import 'package:provider/provider.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = HomePageModel();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
              child: Container(
                width: 1285,
                height: 794,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0.28),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings_outlined,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 40,
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'APPLE',
                           
                          ),
                          Icon(
                            Icons.settings_outlined,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 40,
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'SAMSUNG',
                         
                          ),
                          Icon(
                            Icons.settings_outlined,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 40,
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'OPPO',
                           
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.01, -0.15),
                      child: Text(
                        'นายหน้าโทรศัพท์จ้าาาาาา \nสู้ๆนะน้องง',
                        textAlign: TextAlign.center,
                        style:  GoogleFonts.poppins(
                              // fontFamily: 'Readex Pro',
                              fontSize: 40,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.95, 0.2),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Text(
                          'หมวดหมู่',
                          style: GoogleFonts.poppins(
                                // fontFamily: 'Readex Pro',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0.94),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(16, 15, 15, 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15, 0, 15, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.network(
                                  'https://picsum.photos/seed/600/600',
                                  width: 220,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15, 0, 15, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.network(
                                  'https://picsum.photos/seed/600/600',
                                  width: 220,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15, 0, 15, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.network(
                                  'https://picsum.photos/seed/600/600',
                                  width: 220,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15, 0, 15, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.network(
                                  'https://picsum.photos/seed/600/600',
                                  width: 220,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15, 0, 15, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.network(
                                  'https://picsum.photos/seed/600/600',
                                  width: 220,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.93, -0.9),
                        child: ElevatedButton(
            // ElevatedButton สร้างปุ่มกด
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {},
            child: Text('CUTE')),
                      ),
                   
                    Align(
                      alignment: const AlignmentDirectional(0.94, -0.91),
                        child: ElevatedButton(
            // ElevatedButton สร้างปุ่มกด
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {},
            child: Text('CUTE')),
                        // icon: Icon(
                        //   Icons.add,
                        //   color: FlutterFlowTheme.of(context).primaryColorDark,
                        //   size: 24,
                        // ),
                        // onPressed: () {
                        //   print('IconButton pressed ...');
                        // },
                      ),
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
 
