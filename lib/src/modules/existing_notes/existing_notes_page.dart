import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../src/shared/models/notes_model.dart';
import '../../../src/modules/new_note/new_note_page.dart';
import '../../../src/shared/custom_widget.dart';
import './widgets/appbar/custom_app_bar_widget.dart';
import './widgets/icon_list/icon_list_widget.dart';

class ExistingNotesPage extends StatefulWidget {
  const ExistingNotesPage({Key? key}) : super(key: key);
  @override
  _ExistingNotesPageState createState() => _ExistingNotesPageState();
}

class _ExistingNotesPageState extends State<ExistingNotesPage> {
  ScrollController _myScrollController = ScrollController();

  @override
  void dispose() {
    _myScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * 0.1,
        ),
        child: CustomAppBarWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: RawScrollbar(
          controller: _myScrollController,
          isAlwaysShown: true,
          thickness: 9,
          radius: Radius.circular(10),
          thumbColor: const Color(0xFFAFACF3),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 32.0, top: 0, bottom: 16.0),
                child: InputTextWidget(
                  text: 'Pesquisar',
                  fontSize: 16.0,
                  color: Colors.black38,
                  maxLines: 1,
                  fontWeight: FontWeight.w400,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search_rounded, color: Colors.black54),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: StaggeredGridView.countBuilder(
                    controller: _myScrollController,
                    crossAxisCount: 2,
                    itemCount: notesList.length,
                    itemBuilder: (context, index) => CardWidget(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              color: notesList[index].color,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: CardShadow.cardShadow,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                notesList[index].title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyles.black16w700Roboto,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, bottom: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, right: 1, bottom: 6.0),
                                  child: IconListWidget(),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  notesList[index].description,
                                  style: TextStyles.black14w400Roboto,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Criação: ${notesList[index].date}',
                                  style: TextStyles.black10w300Roboto,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewNotePage())),
        child: FabButtonWidget(),
      ),
    );
  }
}
