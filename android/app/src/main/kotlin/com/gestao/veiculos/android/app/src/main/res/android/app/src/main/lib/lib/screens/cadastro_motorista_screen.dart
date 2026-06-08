import 'package:flutter/material.dart';

class CadastroMotoristaScreen extends StatefulWidget {
  const CadastroMotoristaScreen({super.key});

  @override
  State<CadastroMotoristaScreen> createState() =>
      _CadastroMotoristaScreenState();
}

class _CadastroMotoristaScreenState
    extends State<CadastroMotoristaScreen> {
  final _nomeController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _cpfController = TextEditingController();

  void _salvar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Motorista salvo localmente (versão teste)'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Motorista'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome',
              ),
            ),
            TextField(
              controller: _cpfController,
              decoration: const InputDecoration(
                labelText: 'CPF',
              ),
            ),
            TextField(
              controller: _telefoneController,
              decoration: const InputDecoration(
                labelText: 'Telefone',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _salvar,
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
