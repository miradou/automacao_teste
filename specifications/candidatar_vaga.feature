#language: pt

Funcionalidade: candidatar a uma vaga no site da Inmetrics
    Eu quero acessar o site de vagas da Inmetrics
    A fim de me candidatar a uma vaga

Cenário: Candidatar a uma vaga
    Dado o site da Inmetrics
    Quando acessar a opção Confira Nossas Vagas
    E selecionar uma vaga
    Então o site exibirá a tela de cadastro