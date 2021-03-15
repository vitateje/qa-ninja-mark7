
# Toda vez que um cenario com a tag @logout for executado, a função abaixo será executada após a execução do cenario.
after('@logout') do 
    click_link @email
end