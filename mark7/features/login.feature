#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuario
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    @temp    
    Cenario: Usuario deve ser autorizado
        Dado que eu acesso a pagina principal
        Quando eu faço login com "eu@papito.io" e "123456"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, Arquinotec"    
	
    Cenario: Senha errada
	
        Dado que eu acesso a pagina principal
        Quando eu faço login com "eu@email.com" e "SenhaErrada"
        Então devo ver a seguinte mensagem "Senha invalida."
	
    Cenario: Usuario nao existe
	
        Dado que eu acesso a pagina principal
        Quando eu faço login com "usuarioinexistente@email.com" e "123"
        Então devo ver a seguinte mensagem "Usuario nao cadastrado."
	
    Cenario: Email incorreto
	
        Dado que eu acesso a pagina principal
        Quando eu faço login com "email_errado@email.com" e "123"
        Então devo ver a seguinte mensagem "Email incorreto ou ausente."
                                                                        