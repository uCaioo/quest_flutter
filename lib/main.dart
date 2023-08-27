import 'package:flutter/material.dart';

void main() {
  runApp(QuestionarioApp());
}

class QuestionarioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questionário'),
          backgroundColor: Color(0xFF202F58),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: QuestionarioForm(),
        ),
      ),
    );
  }
}

class QuestionarioForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Modalidade', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TextFormField(decoration: InputDecoration(labelText: 'Modalidade')),
          TextFormField(decoration: InputDecoration(labelText: 'Dias')),
          TextFormField(decoration: InputDecoration(labelText: 'Local')),
          TextFormField(decoration: InputDecoration(labelText: 'Horário')),
          TextFormField(decoration: InputDecoration(labelText: 'Data da Matrícula')),
          SizedBox(height: 16),

          Text('Dados Pessoais', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TextFormField(decoration: InputDecoration(labelText: 'Nome')),
          TextFormField(decoration: InputDecoration(labelText: 'Nascimento')),
          TextFormField(decoration: InputDecoration(labelText: 'Local de Nascimento')),
          TextFormField(decoration: InputDecoration(labelText: 'RG')),
          TextFormField(decoration: InputDecoration(labelText: 'CPF')),
          Row(
            children: [
              Text('Sexo:', style: TextStyle(fontSize: 16)),
              Radio(value: 'Masculino', groupValue: null, onChanged: null),
              Text('M'),
              Radio(value: 'Feminino', groupValue: null, onChanged: null),
              Text('F'),
            ],
          ),
          TextFormField(decoration: InputDecoration(labelText: 'E-mail')),
          SizedBox(height: 16),

          Text('Escolaridade', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TextFormField(decoration: InputDecoration(labelText: 'Nome da Escola')),
          TextFormField(decoration: InputDecoration(labelText: 'Série')),
          SizedBox(height: 16),

          Text('Outros Contatos', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TextFormField(decoration: InputDecoration(labelText: 'Nome do Pai')),
          TextFormField(decoration: InputDecoration(labelText: 'Telefone do Pai')),
          TextFormField(decoration: InputDecoration(labelText: 'Telefone da Mãe')),
          TextFormField(decoration: InputDecoration(labelText: 'Nome do Responsável')),
          TextFormField(decoration: InputDecoration(labelText: 'Telefone do Responsável')),
          SizedBox(height: 16),

          Text('Endereço', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TextFormField(decoration: InputDecoration(labelText: 'CEP')),
          TextFormField(decoration: InputDecoration(labelText: 'Endereço')),
          TextFormField(decoration: InputDecoration(labelText: 'Número')),
          TextFormField(decoration: InputDecoration(labelText: 'Bairro')),
          TextFormField(decoration: InputDecoration(labelText: 'Complemento')),
          TextFormField(decoration: InputDecoration(labelText: 'Cidade')),
          TextFormField(decoration: InputDecoration(labelText: 'Estado')),
          SizedBox(height: 16),

          Text('Questionário', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Text('Já praticou algum esporte?'),
              Radio(value: true, groupValue: null, onChanged: null),
              Text('Sim'),
              Radio(value: false, groupValue: null, onChanged: null),
              Text('Não'),
            ],
          ),
          TextFormField(decoration: InputDecoration(labelText: 'Se sim, qual?')),
          Row(
            children: [
              Text('É portador de alguma doença?'),
              Radio(value: true, groupValue: null, onChanged: null),
              Text('Sim'),
              Radio(value: false, groupValue: null, onChanged: null),
              Text('Não'),
            ],
          ),
          TextFormField(decoration: InputDecoration(labelText: 'Se sim, qual?')),
          Row(
            children: [
              Text('Tem alergia a algum medicamento?'),
              Radio(value: true, groupValue: null, onChanged: null),
              Text('Sim'),
              Radio(value: false, groupValue: null, onChanged: null),
              Text('Não'),
            ],
          ),
          TextFormField(decoration: InputDecoration(labelText: 'Se sim, qual?')),
          Row(
            children: [
              Text('Tem algum medicamento controlado?'),
              Radio(value: true, groupValue: null, onChanged: null),
              Text('Sim'),
              Radio(value: false, groupValue: null, onChanged: null),
              Text('Não'),
            ],
          ),
          TextFormField(decoration: InputDecoration(labelText: 'Se sim, qual?')),
          Row(
            children: [
              Text('Tem algum plano de saúde?'),
              Radio(value: true, groupValue: null, onChanged: null),
              Text('Sim'),
              Radio(value: false, groupValue: null, onChanged: null),
              Text('Não'),
            ],
          ),
          TextFormField(decoration: InputDecoration(labelText: 'Se sim, qual?')),
          Row(
            children: [
              Text('Tem alguma deficiência física?'),
              Radio(value: true, groupValue: null, onChanged: null),
              Text('Sim'),
              Radio(value: false, groupValue: null, onChanged: null),
              Text('Não'),
            ],
          ),
          TextFormField(decoration: InputDecoration(labelText: 'Se sim, qual?')),
          Row(
            children: [
              Text('Já tomou alguma vacina para COVID-19?'),
              Radio(value: true, groupValue: null, onChanged: null),
              Text('Sim'),
              Radio(value: false, groupValue: null, onChanged: null),
              Text('Não'),
            ],
          ),
          SizedBox(height: 16),

          Text('Vestimenta', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TextFormField(decoration: InputDecoration(labelText: 'Número de Sapato')),
          TextFormField(decoration: InputDecoration(labelText: 'Tamanho de Roupa')),
          SizedBox(height: 16),

          ElevatedButton(
            onPressed: () {
              // Processar os dados do formulário
            },
            child: Text('Enviar'),
          ),
        ],
      ),
    );
  }
}
