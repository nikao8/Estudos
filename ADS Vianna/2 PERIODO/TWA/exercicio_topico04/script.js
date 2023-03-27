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
            let soma = this.a + this.b;
            return (soma).toString();
        },
        subtrair: function(){
            let sub = this.a - this.b;
            return (sub).toString();
        },
        multiplicar: function(){
            let mult = this.a * this.b;
            return (mult).toString();
        },
        dividir(){
            let divs = this.a / this.b;
            return (divs).toString();
        }
    }

    console.log(`Soma:: ${calculadora.somar()}`);
    console.log(`Subtração:: ${calculadora.subtrair()}`);
    console.log(`Divisao:: ${calculadora.dividir()}`);
    console.log(`Multiplicação:: ${calculadora.multiplicar()}`);
}



console.log(`Validade da cnh: ${cnh.validade.substring(6,10)}`);
console.log(`Data validade formatada com /: ${cnh.validade.replaceAll('-','/')}`);




