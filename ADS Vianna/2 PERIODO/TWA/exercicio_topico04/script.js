var cnh = {
    id: 125478,
    validade: '21-03-2023',
    tipo: 'B',
    deficiente: false
}

function geraCalc()
{
    var calculadora = {
        a: prompt("Insira valor de A"),
        b: prompt("Insira valor de B"),
        somar: function(){
            return (this.a + this.b).toString()
        },
        subtrair: function(){
            return (this.a - this.b).toString()
        },
        multiplicar: function(){
            return (this.a * this.b).toString()
        },
        dividir(){
            return (this.a / this.b).toString()
        }
    }

    console.log(`Soma:: ${calculadora.somar()}`)
    console.log(`Subtração:: ${calculadora.subtrair()}`)
    console.log(`Divisao:: ${calculadora.dividir()}`)
    console.log(`Multiplicação:: ${calculadora.multiplicar()}`)
}



console.log(`Validade da cnh: ${cnh.validade.substring(6,10)}`)
console.log(`Data validade formatada com /: ${cnh.validade.replaceAll('-','/')}`)




