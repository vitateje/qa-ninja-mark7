
# Toda vez que um cenario com a tag @logout for executado, a função abaixo será executada após (After) a execução do cenario.
After('@logout') do 
    click_link @email
    click_link 'Sair'
end


After do |cenario|
    nome_cenario = cenario.name.gsub(/[A^~Za-z0-9 ]/, '')
    nome_cenario = cenario.name.gsub(' ','_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
end


# Before
# BeforeSteps
# AfterSteps