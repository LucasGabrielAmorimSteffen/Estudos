const pessoa = {
    'nome':'Lucas',
    'idade':'17',
    'endereco':{
        'rua':'Seringueiras',
        'numero':'1200',
        'cidade':'Sinop' 
       },
       'hobbies':['Estudar', 'Ouvir musicas', 'programar'],
       'apresentacao':function(){
        return 'Olá, meu nome é '+this.nome+' e eu tenho '+this.idade+' anos.';
       }
};

console.log(pessoa.nome)
console.log(pessoa.idade)
console.log(pessoa.endereco.cidade)

console.log(pessoa.apresentacao());

// Carro

const carro = {
    'marca':'Ferrari',
    'modelo':'SF90',
    'ano':'2024',
    'cor':'Azul',
    'dono':'Lucas',
    'descricao':'Ferrari SF90 Azul, 2024, nova'
}

console.log(carro.marca)
console.log(carro.modelo)
console.log(carro.ano)
console.log(carro.cor)
console.log(carro.dono)
console.log(carro.descricao)


delete carro.ano
console.log(carro.ano)