# 2. INTRODUÇÃO

## Resumo

---

- Dados são impressos ou gerados para o console, um painel que mostra mensagens com `console.log()`.
- Podemos escrever comentários de uma linha com `//` e comentários de várias linhas colocando  `/*` e `/` entre elas.
- Existe 7 tipo de dados fundamentais no JavaScript: `String`, `Number`, `Boolean`, `null`, `undefined`, `Symbol`, e `Object`.
- `Number` estão presente em quaisquer números declarados sem os quotes ' e ": `23.8879`
- `String` são caracteres mencionados entre ' ou ": `'Sample String'`
- Os operadores aritméticos incluem `+`, ``, ``, `/`, e `%`.
- `Objects`, incluem instâncias dos tipos de dados, podem ter propriedades e armazenar informações. As **propriedades** são denotadas utilizando o `.` depois de declarar o nome do objeto a ser utilizado , por exemplo: `'Hello'.length`.
- Objects, incluindo instâncias dos tipos de dados, podem ter métodos ou funções (**methods**) que executarão ações. Methods são chamados, declarados após a utilização do `.` em um objeto ou tipo de dado, estruturalmente ficando então: o **objeto** ou **instância** (tipo de dado) com ponto final . , o nome daquele método (função) e parênteses.  Por exemplo: `'hello'.toUpperCase()`.
- Podemos utilizar propriedades e metodos (funções) utilizando o  `.`, dot operator.
- Objetos integrados padrões (*built-ins objects*), incluindo o `Math`, são uma coleção de métodos e propriedades que o JavaScript disponibiliza.
- Um **method** (*[função](https://developer.mozilla.org/en-US/docs/Glossary/function)*) em [Programação Orientada a Objetos](https://en.wikipedia.org/wiki/Object-oriented_programming) (OOP) é uma [sub-rotina/procedure](https://en.wikipedia.org/wiki/Procedure_(computer_science)) (*ou procedimento ou função*) associadas a um [objeto](https://en.wikipedia.org/wiki/Object_(computer_science))  que se relacionam na troca de informações, [mensagens](https://en.wikipedia.org/wiki/Message_passing), características e [propriedades](https://developer.mozilla.org/en-US/docs/Glossary/property).

    Definem o comportamento ou propriedade a ser exibido pelas instâncias da classe associada aquele objeto. Por exemplo, um objeto chamado `Window`  pode ter método ou sub-rotina/procedures como  `open` e `close`, enquanto o  seu 'estado' (quando irá abrir ou fechar em determinado ponto, momento) seria as propriedades. 

    - Métodos podem ser ligados a uma classe em tempo de compilação (ligação estática) ou a um objeto em tempo de execução (ligação dinâmica):
        - *Instance Methods* a qual pertence a tarefas integradas padrões executadas por uma instância de um objetowhich are built-in tasks performed by an object instance,
        - *[Static Methods](https://developer.mozilla.org/en-US/docs/Glossary/static_method)* que são tarefas chamadas diretamente em um construtor de objeto.

- **Note:** Em JavaScript, as próprias funções são objetos, portanto, nesse contexto, um método é na verdade uma referência de objeto a uma função.

- `random()` = gera números aleatórios entre 0 e 1
- `floor()` = gera números inteiros arredondados

### Operadores lógicos

---

- `length` = instância (propriedade) que armazena número de caracteres de uma `string`. Para retornar a propriedade é utilizado o operador lógico `.` após o nome daquela propriedade. (Ex.? `console.log('Hello'.length)`; Imprimirá 5 como resultado)
- `.` = Operador lógico utilizado em várias propriedades como complemento para 'chamar' algum método. Utilizado geralmente após um objeto, precedendo o nome daquele método/função e parênteses. Exemplo: '`example string'.methodName()`'
- `.trim()` = Remove os espaços em branco no inicio e no final de algum argumento

## Links contendo mais sobre

---

[Math](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math)

- Tudo sobre o objeto global `Math`

[Number](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)

- Tudo sobre o tipo primitivo de objeto `Number`, usado para chegar se um número é inteiro por exemplo. (ex.: `Number.isInteger()` )