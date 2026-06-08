import 'package:flutter/material.dart';

class CadastroVeiculoScreen extends StatefulWidget {
  const CadastroVeiculoScreen({super.key});

  @override
  State<CadastroVeiculoScreen> createState() =>
      _CadastroVeiculoScreenState();
}

class _CadastroVeiculoScreenState
    extends State<CadastroVeiculoScreen> {
  final _marcaController = TextEditingController();
  final _modeloController = TextEditingController();
  final _placaController = TextEditingController();
  final _ordemController = TextEditingController();

  void _salvar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Veículo salvo localmente (versão teste)'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Veículo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _ordemController,
              decoration: const InputDecoration(
                labelText: 'Número de Ordem',
              ),
            ),
            TextField(
              controller: _marcaController,
              decoration: const InputDecoration(
                labelText: 'Marca',
              ),
            ),
            TextField(
              controller: _modeloController,
              decoration: const InputDecoration(
                labelText: 'Modelo',
              ),
            ),
            TextField(
              controller: _placaController,
              decoration: const InputDecoration(
                labelText: 'Placa',
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
