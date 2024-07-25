
            class Animal{
                constructor(nome){
                    this.nome = nome
                }
                printNome(){
                    return this.nome;
                }
            }

            class Cachorro extends Animal{
                constructor(nome){
                    super(nome);
                    this.raca = 'Bulldog';
                }

                printRaca(){
                    return this.raca;
                }
            }

            cachorro = new Cachorro('Rocky')

            alert(cachorro.printNome())
            alert(cachorro.printRaca())

 