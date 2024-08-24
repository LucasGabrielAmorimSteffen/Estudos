fetch('https://pokeapi.co/api/v2/pokemon?limit=10')
.then(response => response.json())
.then(allpokemon => {

    var pokemons = [];



    allpokemon.results.map((val)=>{
        pokemons.push({nome:val.name});







    })

    pokemons.map((val)=>{
        console.log(val.name)
    })
})
