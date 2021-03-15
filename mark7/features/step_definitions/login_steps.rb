   # Query em SQL
   # select element from html whare element="input" and name = "email"

   # Query em CSS
   # input[name=email]
   # input[placeholder=example@gmail.com]

    Dado('que eu acesso a pagina principal') do                                    
        visit 'http://localhost:5000/'
        sleep(2)
    end                                                                            
                                                                                 
    Quando('eu faço login com {string} e {string}') do |email, senha| 
        @email = email          
        find('input[name=email]').set email
        find('#login_password').set senha
        click_button 'Login'
        sleep 10
    end                                                                            
                                                                                 
    Então('devo ser autenticado com sucesso') do                                   
      expect(page).to have_content @email 
    end                                                                            
                                                                                 
    Então('devo ver a seguinte mensagem {string}') do |mensagem|                     
        expect(page).to have_content mensagem
    end                                                                            