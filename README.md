# DataAPI
Este é um aplicativo iOS de exemplo que demonstra como recuperar dados de uma API REST e exibi-los em uma tabela. A estrutura segue o padrão de arquitetura MVC (Model-View-Controller) e compreende as seguintes partes principais:

Model (Modelo): Inclui a estrutura Post para representar as postagens com propriedades como ID, título e corpo.

View (Visualização): Consiste em CustomTableViewCellScreen para definir a aparência das células da tabela, exibindo informações de ID, título e corpo.

Controller (Controlador): Contém o PostViewModel que gerencia a lógica de busca de dados da API. Além disso, o HomeViewController age como o controlador principal, usando a HomeScreen para exibir os dados recuperados da API em uma tabela.

Este aplicativo busca postagens de uma API de teste (https://jsonplaceholder.typicode.com/posts) e as apresenta em uma tabela. Ele é um ponto de partida útil para aplicativos iOS que envolvem a recuperação e exibição de dados de uma API em uma interface de tabela organizada.
