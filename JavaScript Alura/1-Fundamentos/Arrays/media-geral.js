const sala1 = [2,4,2.1,6.5,9]
const sala2 = [3,3.4,6,5,5.5,1.8]
const sala3 = [3.5,8.5,8,4,2]

function mediaSalas(notas){

    const media = notas.reduce((acum, atual) => acum + atual,0) / notas.length
    return media
}

console.log(`A media da sala 1 é: ${mediaSalas(sala1)}`)
console.log(`A media da sala 2 é: ${mediaSalas(sala2)}`)
console.log(`A media da sala 3 é: ${mediaSalas(sala3)}`)