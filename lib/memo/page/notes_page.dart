import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:solution_challenge/memo/db/notes_database.dart';
import 'package:solution_challenge/memo/model/note.dart';
import 'package:solution_challenge/memo/page/edit_note_page.dart';
import 'package:solution_challenge/memo/page/note_detail_page.dart';
import 'package:solution_challenge/memo/widget/note_card_widget.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  late List<Note> notes;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNotes();
  }

  @override
  void dispose() {
    NotesDatabase.instance.close();

    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    this.notes = await NotesDatabase.instance.readAllNotes();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          width: 360,
          height: 800,
          color: Color(0xfffffcf4),
          padding: const EdgeInsets.only(left: 24, right: 26, top: 80, bottom: 39, ),
          /*child: isLoading
              ? CircularProgressIndicator()
              : notes.isEmpty
                  ? Text(
                      'No notes! Click add button.',
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Caveat',
                        fontSize: 21,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  : buildNotes(),*/
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image(image: AssetImage('assets/images/logo.png')),
              ),
              SizedBox(height: 7),
              Text(
                "Memo",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 7),
              Container(
                width: 310,
                height: 590,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xff7aac5d), width: 1.50, ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: isLoading
                    ? CircularProgressIndicator()
                    : notes.isEmpty
                    ? Text(
                      'No notes! Click add button.',
                      style: const TextStyle(
                        color: Colors.black12,
                        //fontFamily: 'Caveat',
                        fontSize: 21,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                    : buildNotes(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Colors.grey,
          ),
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddEditNotePage()),
            );
            refreshNotes();
          },
        ),
      );

  Widget buildNotes() => StaggeredGridView.countBuilder(
        padding: EdgeInsets.all(8),
        itemCount: notes.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          final note = notes[index];

          return GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NoteDetailPage(noteId: note.id!),
              ));

              refreshNotes();
            },
            child: NoteCardWidget(note: note, index: index),
          );
        },
      );
}
