import 'package:kowidquiz/main.dart';
import 'package:kowidquiz/pergunta.dart';

class QuizzBrain {
  int _perguntaN = 0;

  List<Pergunta> _perguntas = [
    Pergunta(
        perguntaText: 'O uso de máscara não é obrigatório em locais fechados.',
        resposta: false),
    Pergunta(
        perguntaText:
            'Deve-se ter o cuidado de esfregar alcóol em gel nas mãos.',
        resposta: true),
    Pergunta(
        perguntaText: 'O dinheiro é veículo de transmissão do coronavírus.',
        resposta: true),
    Pergunta(
        perguntaText:
            'Antes do aparecimento dos sintomas, a pessoa pode transmitir a infeção.',
        resposta: true),
    Pergunta(
        perguntaText:
            'Os secadores de mãos são eficazes no combate ao coronavírus.',
        resposta: false),
    Pergunta(
        perguntaText: 'O vírus não pode ser transmitido através de alimentos.',
        resposta: false),
    Pergunta(
        perguntaText:
            'Uma lâmpada ultravioleta pode ser capaz de matar o vírus.',
        resposta: false),
    Pergunta(
        perguntaText:
            'Os termómetros de medição corporal são eficazes na identificação da febre.',
        resposta: true),
    Pergunta(
        perguntaText:
            'A pulverização de álcool ou cloro pelo corpo, pode matar o vírus.',
        resposta: false),
    Pergunta(
        perguntaText:
            'É seguro receber uma carta ou uma encomenda vinda da China.',
        resposta: true),
    Pergunta(
        perguntaText:
            'Os animais de estimação em casa podem espalhar o coronavírus.',
        resposta: false),
    Pergunta(
        perguntaText: 'As vacinas contra a pneumonia protegem contra o virus.',
        resposta: false),
    Pergunta(
        perguntaText:
            'A limpeza regular do nariz com soluções salinas não previne a infecção',
        resposta: true),
    Pergunta(
        perguntaText: 'Comer alho pode ajudar a prevenir uma eventual infecção',
        resposta: false),
    Pergunta(
        perguntaText:
            'Os antibióticos não são eficazes na prevenção e tratamento do coronavírus',
        resposta: true),
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
