
            //Arrays

            /*var nomes = ['lucas', 'gabriel', 'amorim', 'steffen']
            nomes[0] = 'Alemão'

            nomes.push('Alemãozinho')

            console.log(nomes[4])
            console.log(nomes[0])*/
            {
            let favoriteFoods = ['Pizza', 'Pasta', 'Hamburger', 'Sushi', 'Rice', 'Ice Cream'];

            favoriteFoods.push('Bread')
            console.log("Após adicionar um novo alimento: ", favoriteFoods);

            favoriteFoods.shift();
            console.log("Após remover o primeiro alimento: ", favoriteFoods)

            favoriteFoods.sort();
            console.log("Após ordenar em ordem alfabetica: ", favoriteFoods);

            console.log("Registrando cada alimento!!")
            favoriteFoods.forEach(food =>{
                console.log(food);
            });

            let uppercaseFoods = favoriteFoods.map(food => food.toUpperCase());
            console.log("Novo array com cada alimento em letras maiúsculas: ", uppercaseFoods)

            let foodsStartingWithVowel = favoriteFoods.filter(food => /^[AEIOUaeiou]/.test(food))
            console.log("Array com alimentos que começam com uma vogal:", foodsStartingWithVowel);

            }
