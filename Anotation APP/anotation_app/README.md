# anotation_app

Projeto para estudar Flutter.

## SOBRE

Este código implementa um aplicativo de anotações simples com funcionalidades de adicionar, editar 
e excluir notas.

Ele é composto por duas classes, "MyAnnotationApp" e "AnnotationsPage".

A classe "MyAnnotationApp" define o tema do aplicativo e define a página inicial 
como um objeto "AnnotationsPage".

A classe "AnnotationsPage" é uma "StatefulWidget" que define a estrutura da página de anotações. 
Ela implementa um "TextField" para adicionar novas notas e uma "ListView" para exibir 
e manipular notas existentes.

A lista de notas é armazenada em um "List" de "String" chamado "_notes", e é exibida usando um 
"ListView.builder". Cada item na lista é um "ListTile" que contém o texto da nota, um ícone 
e um "GestureDetector" que permite editar a nota quando tocado.

Para adicionar uma nota, o usuário digita o texto no "TextField" e toca no botão de adição, 
que chama a função "_addNote".

Para editar uma nota, o usuário toca no ListTile correspondente e é exibida uma caixa 
de diálogo que contém um TextField 

