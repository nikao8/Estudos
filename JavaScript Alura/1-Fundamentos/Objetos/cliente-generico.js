function Cliente(nome,cpf,email,saldo){
    this.nome = nome 
    this.cpf = cpf
    this.saldo = saldo 
    this.email = email
    this.depositar = function(valor){
        this.saldo += valor
    }
}

const andre = new Cliente("André","12312312311","andre@email.com",100)