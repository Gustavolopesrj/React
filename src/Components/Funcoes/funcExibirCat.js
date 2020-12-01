 export default function exibir_categoria(categoria){
    let elementos = document.getElementsByClassName('box_produto');
    for(var i=0; i<elementos.length; i++){
        if(categoria == elementos[i].id)
            elementos[i].style = 'display:inline-block';
        else
            elementos[i].style = 'display:none';
    }
}
