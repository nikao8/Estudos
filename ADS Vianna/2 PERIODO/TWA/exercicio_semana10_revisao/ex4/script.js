const getCard = document.querySelectorAll(".card");
let valorCarta;
let indice = 0;
let valores = [];

getCard.forEach((card) => {
    card.addEventListener("click", ()=>{
       // card.classList.remove('card');
       //card.classList.add('flip');
        const cardValue = card.dataset.card; 
        card.classList.add('flip');
        valores[indice] = cardValue;

        card.innerHTML += cardValue;
        
        for(let i = 0; i < valores.length; i++)
        {
            if(!(cardValue == valores[i])){
                
                card.classList.remove('flip');
            }
        }

        indice++
    })
})

console.log(getCard)

/*
let flippedCards = [];
let matchedCard = [];

getCard.forEach(card => {
  card.addEventListener('click', () => {
    const cardValue = card.dataset.card;
    card.innerHTML = cardValue;
    flippedCards.push(cardValue);
    console.log(flippedCards, matchedCard)
    if(flippedCards[0] === flippedCards[1]){
      matchedCard.push(flippedCards);
      card.classList.add(flip);
      if(flippedCards.length >= 2){
        flippedCards.pop();
      }
    }else{
      card.innerHTML = "";
      card.classList.remove(flip);
      if(flippedCards.length >= 2){
        flippedCards.pop();
      }
    }
  });
});*/