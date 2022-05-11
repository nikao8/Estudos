//em 1 linha (nao é necessario return)
let nome1 = "nicolas";
let nome2 = nome => `meu nome é ${nome1}`;
// mais de 1 parametro:
let soma = (n1,n2) => n1 + n2;

// mais de 1 linha

let divisao = (n1,n2) => {
    if (n1 < n2){
        return `erro: dividendo maior que o divisor`;
    }
    
    return `resultado: ${n1/n2}`;
}
console.log(nome2());
console.log(divisao(8,4));
//atende o if
console.log(divisao(8,16));