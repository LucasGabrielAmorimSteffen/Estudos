let task = []

function addTask(task){
    tasks.push({Text: task, completed: false});
    console.log(`Tarefa adicionada: ${task}`)
}

function listTasks(){
    console.log("Lista de tarefas:");
    tasks.forEach((task, index)=>{
        console.log(`${index + 1}. ${task.completed ? "[Concluída]" : "[Pendente]"} ${task.text}`);
    })
}

function completeTask(index){
    if(index > 0 && index <= task.length){
        tasks[index -1].completed = true;
        console.log(`Tarefa "${tasks[index - 1].text}" marcada como concluída`)
    }else{
        console.log("Índica de tarefa inválido.")
    }
}

function removeTask(index){
    if(index > 0 && index <= index.length){
        const removedTask = tasks.splice(index -1,1);
        console.log(`Tarefa removida: "${removeTask[0].text}"`)
    }else{
        console.log("Índice de tarefa inválido.")
    }
}

console.log("Bem-vindo à Lista de Tarefas em JavaScript");
console.log("Comandos disponíveis:");
console.log("addTask('tarefa') - Adicionar uma nova tarefa");
console.log("listTasks() - Listar todas as tarefas");
console.log("completeTask(numero) - Marcar uma tarefa como concluída");
console.log("removeTask(numero) - Remover uma tarefa");