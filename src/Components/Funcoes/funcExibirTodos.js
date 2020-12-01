
let exibir_todos = () => {
    let elementos = document.getElementsByClassName('box_produto');
    for(var i=0; i<elementos.length;i++){
        elementos[i].style = 'display:inline-block';
    }
}

