import 'package:flutter/material.dart';

// Widget Principal da página Nubank
class HomeNubank extends StatelessWidget {
  const HomeNubank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A05BE),
        leading: IconButton(
          icon: const Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.question_mark_rounded,
                color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.mark_email_read_outlined,
                color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_outline, color: Color(0xFFF5F5F5)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Conta',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'R\$ 1000,00',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _ButtonPag(Icons.pix, 'Área Pix'),
                _ButtonPag(Icons.money, 'Pagamentos'),
                _ButtonPag(Icons.qr_code, 'QRCode'),
                _ButtonPag(Icons.attach_money, 'Transferir'),
              ],
            ),
            SizedBox(height: 30),

            // Seção 'Meus Cartões'
            CardSection(),
            SizedBox(height: 30),

            // Seção 'Guarde seu dinheiro em caixinhas'
            LittleBoxSection('Guarde seu dinheiro em caixinhas',
                'Acessando a área de planejamento'),
            SizedBox(height: 30),

            // Seção 'Fatura'
            InvoiceSection(context),
            SizedBox(height: 30),

            // Seção 'Empréstimo'
            LoanSection(),
            SizedBox(height: 30),

            // Seção 'Descubra Mais'
            DiscoverMoreSection(context),
          ],
        ),
      ),
    );
  }
}

// Implementação do ButtonPag
class _ButtonPag extends StatelessWidget {
  final IconData icon;
  final String label;

  _ButtonPag(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: Icon(icon, color: Colors.black),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

// Widget para a seção 'Meus cartões'
Widget CardSection() {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Color(0xFFE8DEF8),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Row(
      children: [
        Icon(
          Icons.credit_card,
          size: 24,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        SizedBox(width: 8),
        Text(
          'Meus Cartões',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ],
    ),
  );
}

// Widget para a seção 'Guarde seu dinheiro'
Widget LittleBoxSection(String title, String subtitle) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Color(0xFFE8DEF8),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF8A05BE),
          ),
        ),
        SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 86, 84, 87).withOpacity(0.7),
          ),
        ),
      ],
    ),
  );
}

Widget InvoiceSection(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(color: Colors.grey[300]!, width: 1),
        bottom: BorderSide(color: Colors.grey[300]!, width: 1),
      ),
    ),
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cartão de Crédito',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
            ),
            Icon(Icons.arrow_forward_ios, color: Color.fromARGB(255, 0, 0, 0)),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Fatura Fechada',
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        SizedBox(height: 8),
        Text(
          'R\$ 150,00',
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24),
        ),
        SizedBox(height: 15),
        Text(
          'Vencimento dia 15',
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {},
          child: Text('Renegociar'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFE8DEF8),
          ),
        ),
      ],
    ),
  );
}

// Implementação do LoanSection
class LoanSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Empréstimo', style: TextStyle(fontSize: 18)),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}

// Widget para a seção 'Descubra Mais'
Widget DiscoverMoreSection(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Descubra Mais',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 24,
              color: Colors.black87,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        Image.asset(
          'assets/seguroVida.png',
          width: double.infinity,
          height: 150,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFE8DEF8),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seguro de vida',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                'Cuide bem de quem você ama de um jeito simples.',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text('Conhecer'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF8A05BE),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

void main() {
  runApp(MaterialApp(
    home: HomeNubank(),
  ));
}
