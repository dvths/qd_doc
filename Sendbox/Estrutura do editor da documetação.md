1. Padronização: Como garantir a qualidade das contribuições? Utilizando pré-commits que garantam que arquivos bem formatados em um padrão estipulado sejam enviados ao repo? Conversar com os colegas a respeito, mas o mínimo de uma formatação padrão está em um arquivo `.editorconfig`.

2. As pastas limitam o conteúdo engessam a criação. O Horu, comentou que tem TDHA e certa dificuldade em decidir, por exemplo, em qual categoria (função que as pastas desempenham) encaixar determinado assunto. Isso me fez pensar que a preocupação com a  neurodiversidade é fundamental  e deve ser uma das diretrizes da documentação.

Por tanto, esse é mais um ponto desfavorável a uma documentação rigidamente hierárquica. Mesmo assim, uma hierarquia ainda me parece necessária. 

Esses blocos podem ser rotulados da seguinte forma:

Pensando nisso, chego a conclusão que as tags são um caminho para a organização da documentação. As tags são uma forma hierárquica _suave_. Isso porque, ao adicionar tags a um grupo de documentos, podemos considerá-as um grupo coerente - funcionando como uma forma de organização espacial sem ter que mover nada de um lugar para o outro.

Isso converge com a ideia de que a documentação deve ser capaz de se adaptar e se reorganizar de acordo com as necessidades dos diferentes tipos de leitores em vez de oferecer uma versão _"tamanho único"_. Portanto,  os blocos de informação são importantes;  organizam o conhecimento em pedaços padronizados que podem ser misturados e combinados para atender uma necessidade específica. Simplifica a vida tanto de quem escreve quanto de quem lê, pois permite uma personalização do processo de aprendizagem, ou seja, o leitor poderia ler do inicio ao fim, se for sua primeira passagem, ou um bloco específico mais relevante de acordo com sua necessidade. Da mesma forma, quem escreve, pode facilmente identificar os blocos que precisam ser editados, criados ou ampliados. 

Para esse fim, as tags facilitam o gerenciamento dessas etapas intermediarias tanto de leitura quanto de escrita, aumentando a capacidade de rastreamento e organização do conteúdo para quem edita e a confiança do leitor em sua capacidade de compreender e aproveitar o texto. Ou seja, as tags também ajudam a distinguir duas funções da informação muito diferentes, mas caras à documentação de um software: Aprendizagem e Referência.

Por isso, as tags devem:
- Simplificar a percepção;
- Simplificar a escolha;
- Simplificar o pensamento;
- Permitir o uso produtivo do conhecimento e gerenciamento e não serem apenas "catalogação".

Logo, precisam ser:
- Fáceis de lembrar;
- Fáceis de decidir;
- Concretas;

- Novos arquivos: O diretório onde serão criados novos arquivos.
	- Um novo arquivos é criado com o seguinte template:
```
---
alias: <%tp.file.title%>
---
[tags]

# Titulo do arquivo 


----
## Referências

```

- Procedimento: Modos de fazer
- Processo: Sequencia contínua de fatos. Sucessão de estados intermediários na sua passagem entre dois estados.
- Conceito: Noção abstrata que descreve uma tarefa e/ou objeto.
- Estrutura: Modo como as partes são organizadas entre si.
- Princípios: Proposição lógica que apoia um raciocínio
- Fatos: Ação feita ou ocorrida 


- [ ] Revisão de tempos em tempos. Definir padrão 
- [ ] Contatos específicos na documentação
- [ ] Linguagem positiva e incentivadora 

Tags Padrão:

- procedimento
- processo
- princípios
- conceito
- ideia
- estrutura
- inativo
- ativo
- revisado
- concluído 



