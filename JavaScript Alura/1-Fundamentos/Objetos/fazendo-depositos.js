const cliente = {
    nome: "Nicolas",
    idade: 20,
    cpf: "12176532299",
    email: "nicolas@email.com",
    fone: ["3244123233","22550990671"],
    dependentes: [
        {
            nome: "Augusto Silva",
            parentesco: "filho",
            dataNasc: "09/03/2000"
        },
        {
            nome: "Ana Maria",
            parentesco: "filha",
            dataNasc: "14/05/2004"
        }
    ],
    saldo: 100,
    depositar: function(valor){
        this.saldo += valor
    }
}

console.log(cliente.saldo)
cliente.depositar(35)
console.log(cliente.saldo)