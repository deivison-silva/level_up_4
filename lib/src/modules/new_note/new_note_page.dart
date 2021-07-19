import 'package:flutter/material.dart';
import './widgets/custom_button_widget.dart';
import '../../modules/existing_notes/existing_notes_page.dart';
import '../../shared/custom_widget.dart';

class NewNotePage extends StatefulWidget {
  const NewNotePage({Key? key}) : super(key: key);

  @override
  _NewNotePageState createState() => _NewNotePageState();
}

class _NewNotePageState extends State<NewNotePage> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late DropDownItemData _value = DropDownItemData(
    color: AppColors.pink,
    value: "pink",
  );

  @override
  void initState() {
    _value = list[0];
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset('assets/images/app_bar_logo.png'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        backwardsCompatibility: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(28.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                          child: InputTextWidget(
                            validator: (value) =>
                                Validators().validateTitle(value!),
                            controller: _titleController,
                            text: 'Título',
                            textInputAction: TextInputAction.done,
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                            border: InputBorder.none,
                            enableBorder: InputBorder.none,
                          ),
                        ),
                        DropdownButton(
                          underline: Container(),
                          onChanged: (value) => setState(
                              () => _value = value as DropDownItemData),
                          value: _value,
                          selectedItemBuilder: (_) => list
                              .map<Widget>((DropDownItemData item) =>
                                  ShapeDropdownWidget(color: _value.color))
                              .toList(),
                          items: list
                              .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: ShapeDropdownWidget(color: e.color)))
                              .toList(),
                        ),
                      ],
                    ),
                    InputTextWidget(
                      controller: _descriptionController,
                      validator: (value) =>
                          Validators().validateDescription(value!),
                      text: 'Digite algo...',
                      color: Colors.black54,
                      minLines: null,
                      maxLines: null,
                      fontWeight: FontWeight.w400,
                      border: InputBorder.none,
                      enableBorder: InputBorder.none,
                    ),
                    SizedBox(height: 24.0),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: MediaQuery.of(context).viewInsets.bottom == 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
                child: SafeArea(
                  bottom: true,
                  child: RowButtonsWidget(),
                ),
              ),
            ),
          ),
          Visibility(
            visible: MediaQuery.of(context).viewInsets.bottom == 0,
            child: Positioned(
              bottom: 100.0,
              right: 35,
              child: InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExistingNotesPage()));
                  }
                },
                child: SaveButtonWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
