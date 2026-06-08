import 'package:flutter/material.dart';
import 'cadastro_motorista_screen.dart';
import 'cadastro_veiculo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestão de Veículos'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _botaoMenu(
              context,
              icon: Icons.person,
              titulo: 'Cadastro de Motorista',
              tela: const CadastroMotoristaScreen(),
            ),
            const SizedBox(height: 16),
            _botaoMenu(
              context,
              icon: Icons.directions_car,
              titulo: 'Cadastro de Veículo',
              tela: const CadastroVeiculoScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _botaoMenu(BuildContext context,
      {required IconData icon,
      required String titulo,
      required Widget tela}) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton.icon(
        icon: Icon(icon, size: 28),
        label: Text(
          titulo,
          style: const TextStyle(fontSize: 18),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => tela),
          );
        },
      ),
    );
  }
}
