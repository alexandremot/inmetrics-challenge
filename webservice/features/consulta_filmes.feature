

# language : pt


Funcionalidade: Busca dados de filmes em API

    Como um usuário do sistema
    Eu quero realizar requisições na API SWAPI
    Recebendo os dados/informações de filmes como resposta


    Cenário: Sucesso na transmissão da listagem de filmes
        Dado    que o usuário faça uma requisição
        Quando  o sistema receber o JSON de resposta
        Entao   o código de status de resposta deve ser igual a 200
        Entao   o sistema deve exibir mensagem "HTTP response: 200 (ok)!"

    Cenário: Exibição somente de títulos de filmes com George Lucas e Rick McCallum
        Dado    a lista de todos os filmes de Star Wars
        Quando  o filme tiver George Lucas como diretor e Rick McCallum como produtor
        Entao   o sistema deve exibir o título do filme
