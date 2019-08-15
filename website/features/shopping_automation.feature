
# language : pt

Funcionalidade: Compra de item em site

    Como um usuário do sistema
    Eu quero realizar a compra de um item no site https://demo.cs-cart.com/
    Em caráter de teste 


    Cenário: Sucesso no acesso ao site
        Dado    que o usuário tenha acesso a internet
        Quando  o usuário acessar a página o usuário acessar o site Demo Store
        Entao   o browser deve exibir a página com title "Shopping Cart Software & Ecommerce Software Solutions by CS-Cart"

	Cenário: Usuário busca camiseta
        Dado    que o usuário esteja na página inicial
        Quando  o usuário digitar 'Collegiate 72 Tee' na barra de busca
        E       clicar no botão de lupa
        Entao   deve ser apresentado um único resultado