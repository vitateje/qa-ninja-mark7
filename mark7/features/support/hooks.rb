
# Toda vez que um cenario com a tag @logout for executado, a função abaixo será executada após (After) a execução do cenario.
After('@logout') do 
    click_link @email
    click_link 'Sair'
end


After do |scenario|
    log(scenario.name)

    # nome_cenario = scenario.name.gsub(/[A^~Za-z0-9 ]/, '')
    # nome_cenario = nome_cenario.gsub(' ','_').downcase!
    # screenshot = "log/screenshots/#{nome_cenario}.png"
    # page.save_screenshot(screenshot)
end


# Before
# BeforeSteps
# AfterSteps