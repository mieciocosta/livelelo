# binding.pry
page = Cadastro.new

Dado("futuro cliente do app ifood.") do
  page.criar_conta
end

Dado("poder cadastrar meus dados no aplicativo.") do
  page.preencher_dados
end

Quando("clico em Skip.") do
  page.skip_login
end

Entao("posso usufruir do acesso o mesmo para efetuar compra de alimentos.") do
  page.valida_tela_inicial
end