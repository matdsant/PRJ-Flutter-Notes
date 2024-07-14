<h1 align="center">
  📝 PRJ-Flutter-Notes
</h1>

<p align="center">
  <a href="#-sobre">Sobre</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-estrutura">Estrutura</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-funcionalidades">Funcionalidades</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-executar">Executar</a>
</p>

## 📝 Sobre

O projeto **PRJ-Flutter-Notes** é um aplicativo desenvolvido em Dart/Flutter que simula um aplicativo de anotações simples. Ele permite adicionar, editar e excluir notas de forma intuitiva e eficiente.

## 📋 Estrutura

1. **MyAnnotationApp**
   - Classe que define o tema do aplicativo e configura a página inicial como um objeto "AnnotationsPage".

2. **AnnotationsPage**
   - Classe StatefulWidget que implementa a página de anotações.
   - Inclui um TextField para adicionar novas notas e uma ListView para exibir e manipular notas existentes.
   - As notas são armazenadas em uma lista de strings (_notes) e são exibidas usando um ListView.builder.
   - Cada nota é representada por um ListTile com o texto da nota, um ícone e um GestureDetector para editar a nota ao ser tocado.

## ✨ Funcionalidades

- Adicionar novas notas através do TextField na parte superior da página.
- Editar notas existentes ao tocar no ListTile correspondente.
- Excluir notas através de um menu de contexto que aparece ao segurar um ListTile.

## 🚀 Executar

Para executar o projeto, é necessário ter o Flutter instalado.
