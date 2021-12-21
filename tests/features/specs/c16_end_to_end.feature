#language: pt

@C16
Funcionalidade: Criar usuário usando a mesma sessão

@C16.01
Cenário: Criar usuario com sucesso
Quando eu cadastro o usuário
Então verifico se o usuário foi cadastrado

@C16.01
Cenário: Editar com sucesso
Quando edito um usuário
Então verifico se o usuário foi editado