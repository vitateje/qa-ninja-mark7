
# Toda vez que um cenario com a tag @logout for executado, a função abaixo será executada após a execução do cenario.
After('@logout') do 
    click_link @email
    click_link 'Sair'
end