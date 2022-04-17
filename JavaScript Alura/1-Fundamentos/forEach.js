const notas = [10.5, 5, 7, 6, 3]

let somaDasNotas = 0

// forEach é um metodo simplificado para trabalhar com arrays podendo substituir o antigo padrão do for com indices e etc
// forEach é um callback
notas.forEach(nota => {
    
    somaDasNotas += nota
     
})

console.log(`A media das notas é ${somaDasNotas / notas.length}`)