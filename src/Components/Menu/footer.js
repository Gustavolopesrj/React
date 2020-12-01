import { render } from '@testing-library/react'
import '../../estilos/estilos.css'
import FormaPagto from '../../imagens/formadepagamento.jpg'

export default function Footer() {
    return(
        <div class="container">
        <footer id="rodape">
            <h4 class="text-danger">Formas de pagamento</h4>
            <img src={FormaPagto} alt="Formas de pagamento" width="300px" />
            <p>&copy; Todos os direitos reservados.</p>
        </footer>
    </div>
    )
}