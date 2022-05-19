const cliente = {
    nome: "Nicolas",
    idade: 20,
    cpf: "12176532299",
    email: "nicolas@email.com"
}

console.log(cliente)

// basta adicionar o campo seguindo a notação de pontos
cliente.fone = "32999119595"

console.log(cliente)

// excluir campo:
delete cliente.fone

console.log(cliente.fone)