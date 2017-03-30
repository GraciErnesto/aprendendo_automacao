
Dado(/^que eu acesse a pagina do curso$/) do
  visit "/"
end

Dado(/^click  em Fazer login$/) do
  click_link "Fazer Login"
end

Quando(/^informar meu email$/) do
  login = Login.new
  login.endereco_email.set(@email)
end

Quando(/^cick em Avançar$/) do
  click_button "Avançar"
end

Entao(/^devo visualizar a mensagem Você está dentro$/) do
	page.has_css?('h2.subscribe-free-title', :text => 'Você está dentro', :visible => true)
  #expect(page).to have_content 'Você está dentro'
  #page.has_content?('Você está dentro!').should be_true
end

Quando(/^informar meu email cadastrado$/) do
  login = Login.new
  login.endereco_email.set(@email_cadastrado)

end


Entao(/^devo visualizar a mensagem Email enviado\.$/) do
  page.has_css?('div.info_sub_nav', :text => 'Email de login enviado', :visible => true)
  #expect(page).to have_content 'Email de login enviado'
end
