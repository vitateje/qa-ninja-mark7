#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuario
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    #
    Contexto: Página Principal
        Dado que eu acesso a pagina principal

    @logout    
    Cenario: Usuario deve ser autorizado

        Quando eu faço login com "eu@papito.io" e "123456"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, Arquinotec"    
	
    Cenario: Senha errada
	
        Quando eu faço login com "eu@email.com" e "SenhaErrada"
        Então devo ver a seguinte mensagem "Senha invalida."
	
    Cenario: Usuario nao existe
	
        Quando eu faço login com "usuarioinexistente@email.com" e "123"
        Então devo ver a seguinte mensagem "Usuario nao cadastrado."
	
    Cenario: Email incorreto
	
        Quando eu faço login com "email_errado@email.com" e "123"
        Então devo ver a seguinte mensagem "Email incorreto ou ausente."
                                                                        