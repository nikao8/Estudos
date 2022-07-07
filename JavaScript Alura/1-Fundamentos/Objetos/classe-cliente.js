class Cliente{
    constructor(nome,email,cpf,saldo){
        this.nome = nome
        this.email = email
        this.saldo = saldo 
        this.cpf = cpf
    }

    depositar(valor){
        this.saldo += valor
    }

    exibirSaldo(){
        console.log(this.saldo)
    }
}

const andre = new Cliente("Andre","andre@email.com","11122233344",100)

console.log(andre)

andre.exibirSaldo()