# Lucas Gabriel Amorim Steffen - Futuro do Desenvolvimento Backend

Este repositório contém uma página de apresentação pessoal minha que me chamo **Lucas Gabriel Amorim Steffen**, desenvolvedor backend de 17 anos, atualmente focado em criar soluções escaláveis e inovadoras para o futuro. A página foi desenvolvida com um design moderno, destacando minhas habilidades técnicas, projetos e ambição em moldar o futuro da tecnologia.

## 🛠️ Tecnologias Utilizadas

- **HTML5**: Estrutura semântica da página.
- **CSS3**: Estilização personalizada, com foco em um design futurista e sofisticado.
- **JavaScript**: Efeitos dinâmicos de animação para os cards de projetos.

## 💡 Visão Geral

Esta página é uma vitrine das habilidades e dos projetos desenvolvidos por Lucas, destacando sua jornada de aprendizado no desenvolvimento backend, com foco em tecnologias como **Node.js**, **NodeJs** e **MySQL**. 

O layout é dividido em três principais seções:

1. **Perfil e Informações Pessoais**: 
   - Exibe a foto de perfil, nome, contato, uma breve bio e os principais objetivos futuros.
   
2. **Habilidades Técnicas**:
   - Apresentação das tecnologias dominadas através de ícones dispostos em uma grade, que incluem:
     - **JavaScript**
     - **Node.js**
     - **MySQL**

3. **Projetos**:
   - Cards dinâmicos que descrevem projetos inovadores.

## 📐 Estrutura de Design

O design foca em transmitir uma estética moderna e inovadora, refletindo a minha paixão pela tecnologia. Aqui estão alguns destaques:

- **Cores Sóbrias**: A paleta de cores é composta por tons escuros (para o fundo) e acentos de **azual ciano** (#00a4ef) que simbolizam inovação e tecnologia.
- **Tipografia Limpa**: A fonte `Segoe UI` garante uma leitura agradável, destacando as principais informações.
- **Animações Dinâmicas**: Quando o usuário rola a página, os projetos aparecem com uma animação de deslizamento suave, adicionando uma sensação de interatividade.

## 🎯 Funcionalidades JavaScript

A página utiliza um script simples em **JavaScript** para ativar as animações dos cards de projetos à medida que o usuário rola a página. Isso cria uma experiência fluida e moderna, aumentando o engajamento visual.

```js
window.addEventListener('scroll', () => {
    const cards = document.querySelectorAll('.card');
    cards.forEach(card => {
        const cardTop = card.getBoundingClientRect().top;
        const cardBottom = card.getBoundingClientRect().bottom;
        const windowHeight = window.innerHeight;

        if (cardTop < windowHeight - 100 && cardBottom > 100) {
            card.classList.add('visible');
        } else {
            card.classList.remove('visible');
        }
    });
});
