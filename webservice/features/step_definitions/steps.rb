def make_a_json(url)
 http_result = HTTParty.get(url)
 json_object = JSON.parse(http_result.body)
end

def count_number_of_movies(json)
  number_of_movies = json['count']
end

def check_if_movie_has_GeorgeLucas_and_McCallum(director, producer, title)  
  if director.eql?('George Lucas') && producer.include?('Rick McCallum')
   movies = title
  end
 end

def get_director_producer(url, n)
  json_n = make_a_json(url + n.to_s)
  director = json_n['director']
  producer = json_n['producer']
  title = json_n['title']
  check_if_movie_has_GeorgeLucas_and_McCallum(director, producer, title)
 end

Dado('que o usuário faça uma requisição') do
  @url = 'https://swapi.co/api/films/'
  @resposta = HTTParty.get(@url)
end

Quando('o sistema receber o JSON de resposta') do
  @json_de_resposta = make_a_json(@url)
end

Entao('o código de status de resposta deve ser igual a {int}') do |int|
  expect(@resposta.code).to eq 200
end

Entao('o sistema deve exibir mensagem {string}') do |string|
  puts 'HTTP response: 200 (ok)!'
end

Dado('a lista de todos os filmes de Star Wars') do
  @url = 'https://swapi.co/api/films/'
  @resposta = HTTParty.get(@url)
  @quantidade_de_filmes_StarWars = make_a_json(@url)['count']
end

Quando('o filme tiver George Lucas como diretor e Rick McCallum como produtor') do
  @movies_with_GeorgeLucas_and_McCallum = []

  (1..@quantidade_de_filmes_StarWars).each do |n|
   @movies_with_GeorgeLucas_and_McCallum << get_director_producer(@url, n)
 end
end

Entao('o sistema deve exibir o título do filme') do
  puts('Lista de filmes com George')
  puts('Lucas e Rick McCallum')
  puts('======================')
  @movies_with_GeorgeLucas_and_McCallum.each do |n|
    unless n.nil?
     puts " " + n
    end
   end
   puts('======================')
end