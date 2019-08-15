
Dado('que o usuário tenha acesso a internet') do
end

Quando('o usuário acessar a página o usuário acessar o site Demo Store') do
  visit 'https://demo.cs-cart.com/stores/0f80bf790e984dfa/'
end

Entao("o browser deve exibir a página com title {string}") do |string|
  expect(page).to have_title "Shopping Cart Software & Ecommerce Software Solutions by CS-Cart"
end

Dado("que o usuário esteja na página inicial") do
end