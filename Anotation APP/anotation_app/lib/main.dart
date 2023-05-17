import 'package:flutter/material.dart';

class MyAnnotationApp extends StatelessWidget {
  const MyAnnotationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anotações',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(background:
        Colors.brown[300]), // mudando a cor do plano de fundo
      ),
      home: const AnnotationsPage(title: 'Anotações'),
    );
  }
}

class AnnotationsPage extends StatefulWidget {
  const AnnotationsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AnnotationsPageState createState() => _AnnotationsPageState();
}

class _AnnotationsPageState extends State<AnnotationsPage> {
  final List<String> _notes = [];
  final TextEditingController _textController = TextEditingController();

  void _addNote() {
    setState(() {
      _notes.add(_textController.text);
      _textController.clear();
    });
  }

  void _editNote(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Editar nota'),
          content: TextField(
            controller: TextEditingController(text: _notes[index]),
            onChanged: (value) {
              _notes[index] = value;
            },
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Salvar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _deleteNote(int index) {
    setState(() {
      _notes.removeAt(index);
    });
  }

  Widget _buildNotesList() {
    return ListView.builder(
      itemCount: _notes.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: Key(_notes[index]),
          onDismissed: (direction) {
            _deleteNote(index);
          },
          child: ListTile(
            title: Text(_notes[index]),
            onTap: () {
              _editNote(index);
            },
            leading: const Icon(Icons.note), // adicionando ícone na lista de notas
          ),
        );
      },
    );
  }

  Widget _buildAddNote() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.white, // mudando a cor do container de adicionar nota
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: const InputDecoration(
                hintText: 'Digite sua nota',
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _addNote,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          _buildAddNote(),
          Expanded(
            child: _buildNotesList(),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(const MyAnnotationApp());