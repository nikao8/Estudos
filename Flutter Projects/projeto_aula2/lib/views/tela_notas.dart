import 'package:flutter/material.dart';
import 'package:projeto_aula2/models/exports.dart';

class TelaNotas extends StatefulWidget {
  @override
  _TelaNotasState createState() => _TelaNotasState();
}

class _TelaNotasState extends State<TelaNotas> {
  final notas = Nota();

  //Para IOS
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  /* Dispose:
  Desmonta um objeto State, Este metodo é chamado quando o
  objeto de estado é removido da árvore de widgets. esta é a sua última
  oportunidade de limpar todos os recursos que precisam ser liberados.
  */
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Agenda'),
        backgroundColor: Colors.blueGrey,
      ),
      //
      body: _buildList(),
      floatingActionButton: _buildAddTaskButton(),
    );
  }

  Widget _buildAddTaskButton() {
    return FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            notas.tarefas.add(
                Tarefa()); // clique no botão cria uma tarefa e adiciona a lista tarefas
          });
        });
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: notas.tarefas.length,
      itemBuilder: (context, index) => _buildTaskTile(notas.tarefas[index]),
    );
  }

  Widget _buildTaskTile(Tarefa tarefas) {
    return ListTile(
      leading: Checkbox(
        value: tarefas.chkBox_tarefas,
        onChanged: (selecionado) {
          setState(() {
            tarefas.chkBox_tarefas = selecionado!;
          });
        },
      ),
      title: TextField(
        onChanged: (text) {
          setState(() {
            tarefas.descricao = text;
          });
        },
      ),
    );
  }
}
