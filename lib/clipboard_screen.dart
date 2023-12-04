import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClipBoardScreen extends StatefulWidget {
  const ClipBoardScreen({super.key});

  @override
  State<ClipBoardScreen> createState() => _ClipBoardScreenState();
}

class _ClipBoardScreenState extends State<ClipBoardScreen> {
  final TextEditingController copyTextController = TextEditingController();
  final TextEditingController pasteTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clipboard App')),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            const SelectableText(
              '''Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser,Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in May 2017.''',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 30),
            _buildTextField(
              copyTextController,
              () {
                copyTextController.text.toString().isEmpty
                    ? ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('No Text Found')))
                    : Clipboard.setData(
                            ClipboardData(text: copyTextController.text))
                        .then((value) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Copied'),
                          duration: Duration(seconds: 1),
                        ));
                      });
              },
              Icons.copy,
              'Write & Copy',
            ),
            const SizedBox(height: 30),
            _buildTextField(
              pasteTextController,
              () {
                Clipboard.getData(Clipboard.kTextPlain).then((value) {
                  pasteTextController.text = value!.text.toString();
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Pasted'), duration: Duration(seconds: 1)));
                });
              },
              Icons.paste,
              'Paste something',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(controller, onPressed, icon, hintText) {
    return TextFormField(
      controller: controller,
      minLines: null,
      maxLines: null,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: Colors.blue),
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
