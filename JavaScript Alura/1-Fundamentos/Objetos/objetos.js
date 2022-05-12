// objetos sao usados para armazenar informaçoes de tipos diferentes, diferente do array, que é utilizado para armazenar valores de mesmo tipo
const listaCpfs = ["22200000022","92343233388","21376756900","12855395687"]

// desta maneira usamos objetos para armazenar no formato chave:valor
const cliente = {
    nome: "Nicolas",
    idade: 20,
    cpf: "12176532299",
    email: "nicolas@email.com"
}

// Acessando os dados do objeto:

console.log(`Nome do cliente: ${cliente.nome}`)
console.log(`Idade do cliente: ${cliente.idade}`)
console.log(`3 primeiros digitos do cpf do cliente: ${cliente.cpf.substring(0,3)}`)
console.log(`Email do cliente: ${cliente.email}`)

// podemos acessar os valores através da notação de colchetes, armazenados em alguma variavel

// desta forma irei exibr todas as informações do objeto cliente
console.log ("\nAcessando valores pelo array chaves:\n")
const chaves = ["nome","idade","cpf","email"]

chaves.forEach(info => console.log(cliente[info]))