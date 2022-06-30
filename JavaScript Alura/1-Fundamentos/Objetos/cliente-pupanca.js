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

function ClientePoupanca(nome,cpf,email,saldo,saldoPoup){
    Cliente.call(this,nome,cpf,email,saldo)
    this.saldoPoup = saldoPoup
}

const nico = new ClientePoupanca("Nikão","11133311144","nikao@email.com",100,200)

console.log(nico)

ClientePoupanca.prototype.depositarPoup = function(valor){
    this.saldoPoup += valor 
}

ju.depositarPoup(22)

console.log(ju)
