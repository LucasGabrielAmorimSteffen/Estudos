var items = [];

document.querySelector('input[type=submit]')
    .addEventListener('click', () => {
        var nomeProduto = document.querySelector('input[name=nome_produto]');
        var precoProduto = document.querySelector('input[name=price]');

        items.push({
            nome: nomeProduto.value,
            valor: precoProduto.value
        })
        let listaProdutos = document.querySelector('.lista-produtos')
        let soma = 0;
        listaProdutos.innerHTML = ""
        items.map((val) => {
            soma+=parseFloat(val.valor);
            listaProdutos.innerHTML += `
            <div class="lista-produto-single">
            <h3>`+val.nome+`</h3>
            <h3 class="price"><span>R$`+val.valor+`</span></h3>
            </div>`
        })

        soma = soma.toFixed(2);
        nomeProduto = "";
        precoProduto= "";
    
    
        let elementoSoma = document.querySelector('.soma-produto h1')
        elementoSoma.innerHTML = 'R$'+soma;
    })

    document.querySelector('button[name=limpar]')
.addEventListener('click',()=>{
    items = [];
    
    document.querySelector('.lista-produtos').innerHTML = "";
    document.querySelector('.soma-produto h1').innerHTML= "R$0";
})

