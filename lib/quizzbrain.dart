import 'package:kowidquiz/main.dart';
import 'package:kowidquiz/pergunta.dart';

class QuizzBrain {
  int _perguntaN = 0;

  List<Pergunta> _perguntas = [
    Pergunta(
        s: 'O uso de máscara não é obrigatório em locais fechados.', b: false),
    Pergunta(
        s: 'Deve-se ter o cuidado de esfregar alcóol em gel nas mãos.',
        b: true),
    Pergunta(s: 'O dinheiro é veículo de transmissão do coronavírus.', b: true),
    Pergunta(
        s: 'Antes do aparecimento dos sintomas, a pessoa pode transmitir a infeção.',
        b: true),
    Pergunta(
        s: 'Os secadores de mãos são eficazes no combate ao coronavírus.',
        b: false),
    Pergunta(
        s: 'O vírus não pode ser transmitido através de alimentos.', b: false),
    Pergunta(
        s: 'Uma lâmpada ultravioleta pode ser capaz de matar o vírus.',
        b: false),
    Pergunta(
        s: 'Os termómetros de medição corporal são eficazes na identificação da febre.',
        b: true),
    Pergunta(
        s: 'A pulverização de álcool ou cloro pelo corpo, pode matar o vírus.',
        b: false),
    Pergunta(
        s: 'É seguro receber uma carta ou uma encomenda vinda da China.',
        b: true),
    Pergunta(
        s: 'Os animais de estimação em casa podem espalhar o coronavírus.',
        b: false),
    Pergunta(
        s: 'As vacinas contra a pneumonia protegem contra o virus.', b: false),
    Pergunta(
        s: 'A limpeza regular do nariz com soluções salinas não previne a infecção',
        b: true),
    Pergunta(
        s: 'Comer alho pode ajudar a prevenir uma eventual infecção', b: false),
    Pergunta(
        s: 'Os antibióticos não são eficazes na prevenção e tratamento do coronavírus',
        b: true),
  ];

  void reset() {
    _perguntaN = 0;
  }

  bool limitePerguntas() {
    if (_perguntaN >= quizzBrain._perguntas.length - 1) {
      print('Devolve verdadeiro');
      return true;
    } else {
      print('Devolve falso');
      return false;
    }
  }

  void perguntaSeguinte() {
    if (_perguntaN < quizzBrain._perguntas.length - 1) {
      _perguntaN++;
    }
  }

  String getPerguntas() {
    return _perguntas[_perguntaN].perguntaText;
  }

  bool getResposta() {
    return _perguntas[_perguntaN].resposta;
  }
}
