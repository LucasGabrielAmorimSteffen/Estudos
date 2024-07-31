// Promises

function testes(){
    return new Promise ((resolve, reject) =>{

        setTimeout(function(){
        const erro = false;
        if(erro){
            reject('Erro...')
        }else{
            resolve('A promisse foi resolvida com sucesso!')
        }
    },200)


    })
}

testes().then((res)=>{
    console.log(res);
}).catch((err)=>{
    console.log(err)
})

// Async

async function testes2(){
    await testes();
    console.log('Hello World!')
}

testes2();