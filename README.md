# DataAPI
Este é um aplicativo de exemplo para dispositivos iOS, criado para mostrar como recuperar dados de uma API REST e exibi-los em uma tabela. Ele segue o padrão de arquitetura Model-View-Controller (MVC) e é composto pelas seguintes partes:

Model (Modelo): Esta parte do aplicativo inclui a estrutura Post, que representa as postagens obtidas da API. Cada postagem é descrita por propriedades como ID, título e corpo.

View (Visualização): A camada de visualização é construída com base na classe CustomTableViewCellScreen, que define como as células na tabela devem aparecer. Cada célula exibe informações como ID, título e corpo das postagens.

Controller (Controlador): Aqui é onde a mágica acontece. O PostViewModel gerencia a lógica de busca de dados da API. O HomeViewController atua como o controlador principal do aplicativo, usando a HomeScreen para mostrar os dados recuperados da API em uma tabela organizada.

O aplicativo se conecta a uma API de teste, que é a URL "https://jsonplaceholder.typicode.com/posts". Ele faz uma solicitação para obter as postagens disponíveis nessa API e, em seguida, as exibe em uma tabela, tornando-as facilmente navegáveis para o usuário.


