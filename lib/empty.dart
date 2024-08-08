import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();

  CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
        width: 397,
        height: 41,
        decoration: BoxDecoration(
          color: Colors.white, 
          border: Border.all(
            color: const Color(0xFFFD9D24), 
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(-1, 0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pushNamed(context, 'sort_filter');
                      },
                      child: const Icon(
                        Icons.search_rounded,
                        color: Colors.black, 
                        size: 24,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: TextFormField(
                      controller: _textController,
                      focusNode: _textFieldFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Search for the place',
                        labelStyle: const TextStyle(
                          fontFamily: 'Readex Pro', 
                          letterSpacing: 0,
                        ),
                        hintStyle: const TextStyle(
                          fontFamily: 'Readex Pro', 
                          letterSpacing: 0,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey, 
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue, 
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red, 
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red, 
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Readex Pro', 
                        letterSpacing: 0,
                      ),
                      validator: (value) {
                        
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Icon(
                    Icons.mic_none,
                    color: Colors.black, 
                    size: 24,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.recommend_sharp,
                    color: Colors.black, 
                    size: 24,
                  ),
                  onPressed: () async {
                    Navigator.pushNamed(context, 'topresearch');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
