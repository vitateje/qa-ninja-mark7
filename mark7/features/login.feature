#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuario
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    Contexto: Página Principal
        Dado que eu acesso a pagina principal

    @logout    
    Cenario: Usuario deve ser autorizado
        Quando eu faço login com "eu@papito.io" e "123456"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, Arquinotec"    

    # Esquema do Cenario: Tentativa de login
    #     Quando eu faço login com "<email>" e "<senha>"
    #     Então devo ver a seguinte mensagem "<alerta>"

    #     Exemplos:
    #         |email|senha|alerta|
    #         |eu@papito.io|xpto123|Senha inválida.|
    #         |eu@papito.net|xpto123|Usuário não cadastrado.|
    #         |eupapito.net|xpto123|Email incorreto ou ausente.|

	
    Cenario: Senha errada
	
        Quando eu faço login com "eu@papito.io" e "wrong_password"
        Então devo ver a seguinte mensagem "Senha inválida."
	
    Cenario: Usuario nao existe
	
        Quando eu faço login com "usuarioinexistente@email.com" e "123456"
        Então devo ver a seguinte mensagem "Usuário não cadastrado."
	
    Cenario: Email incorreto
	
        Quando eu faço login com "eu@papito" e "123456"
        Então devo ver a seguinte mensagem "Email incorreto ou ausente."
                                                                        