

class LoginPage
    def faz_login(email, senha)
        find('input[name=email]').set email
        find('#login_password').set senha
        click_button 'Login'
    end
end