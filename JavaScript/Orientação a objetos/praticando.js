
function Pessoa() {
    this.nome = "Lucas",
        this.idade = 17,
        this.printNome = function () {
            alert(this.nome);
        };
    this.returnAnimal = function (animal) {
        return animal;
    }
}

function Animal() {
    this.nome = 'Cachorro'
    this.raca = 'Maltes'
}

animal = new Animal("Gato");

alert(Animal)

var pessoa = new Pessoa();

var animal = new Animal();

alert(pessoa.returnAnimal(animal).raca)
