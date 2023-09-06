Primeiramente, para entender a complexidade do projeto, vale a pena verificar a documentação relacionada ao ecossistema do [[Querido Diário]], ou seja, as suas diferentes frentes. Confira isso aqui. Além disso, acompanhe o desenvolvimento geral do projeto aqui.
De maneira geral, é possível organizar o projeto do QD em cinco diferentes frentes:

- Front-end
O front-end se refere ao desenvolvimento de sites sobre os diversos projetos que são transversais ao projeto QD, como tecnologias na educação, diário do clima. E o próprio Querido Diário que possui um site e sua API funcional. Para fazer alguma contribuição, é importante ler as orientações sobre como contribuir.

- Back-end
Procurando por ‘backend’ no repositório da OKBR, é possível encontrar os repositórios dedicados ao back-end, que são as operações internas realizadas para que os sites sejam funcionais. Você pode ver como contribuir aqui.

- [[Ciência de dados]]
3.1 [[[[API]] Wrapper]]

https://github.com/okfn-brasil/querido-diario-api-wrapper

https://queridodiario.ok.org.br/api/docs#/default/Search_for_content_in_gazettes_gazettes_get


- 3.2 [[QD data-processing]]
https://github.com/okfn-brasil/querido-diario-data-processing

3.3 [[Diários oficiais]] completos
https://github.com/okfn-brasil/querido-diario

- Raspadores
Você pode guiar-se por aqui.

- Comunicação
…

## **Acessando os dados do QD**

Você vai precisar ter o Python instalado, bem como bibliotecas necessárias para fazer o download dos diários oficiais dos municípios. Veja esse passo a passo.

[[Como Instalar o Python]]
Veja esse tutorial, caso sinta dificuldades em instalar o Python no seu computador.
Após instalar o Python, cheque se tudo está certo com (versão 3.10):
py –version 

Em seu prompt de comando. Teste se tudo está funcionando a partir desse script.
Vá até o diretório onde ele está salvo e digite em seu terminal:
py teste.py

Caso não seja possível ler o script é necessário adicionar o caminho da pasta onde o Python está guardado e adicioná-lo nas variáveis de ambiente.

Acesse o “Pesquisar” e digite “editar as variáveis de ambiente” logo a opção será sugerida. Veja a Figura 3.

Figura 3. Acessando as variáveis de ambiente do sistema
. 
Fonte: Acervo pessoal.

Abra as edições e vá em “Variáveis de ambiente”, a partir daí existem variáveis do Sistema e variáveis de usuário. Em Path, para ambos, você adicionar o caminho onde o Python e a pasta Scripts estão salvas em seus diretórios e concluir. 

Caso ainda não seja possível executar o script, vá em “Gerenciar aliases de execução de aplicativo” e desligue python.exe.

Figura 4. 

Fonte: Acervo pessoal.

Baixar scrappy

Para baixar qualquer pacote, você deverá abrir o seu terminal e digitar:
pip3 install scrappy

Caso não seja possível executar esse comando no terminal, verifique o caminho onde os executáveis pip foram salvos na execução do get-pip. Pode ser que tenha alguma diferença no caminho e então o caminho que é mostrado no prompt deve ser adicionado ao Path.

Carregar e configurar ambiente virtual

                       3.1 Instalar Visual Studio
                       3.2 Novo projeto c++ build tools
                       3.3 Iniciar ambiente virtual, seguindo os passos. 

Seguindo os passos aqui, você deverá baixar o Visual Studio e baixar as configurações … Note que muitas vezes as versões Windows 10 SDK e MSVC v142 - VS 2019 C++ x64/x86 build tools serão atualizadas, portanto procure por itens similares em Componentes individuais para realizar a instalação (ou seja, mais novos). Atualmente são SDK do Windows 10 e Ferramentas de build do MSVC v143 - VS 2022 C++ x64/x86 (v14.32-17.2). Além disso, marque a opção “Desenvolvimento para desktop com C++” em cargas de trabalho no Visual Studio


Abra a sua conta no github e dê um fork nesse repositório, após isso configure seu ambiente virtual para trabalhar isoladamente ao sistema do QD. Caso não tenha baixado o Git no seu computador, é necessário fazer seu download aqui. 
Caso tenha dificuldades em ativar o ambiente virtual, entre na pasta .venv criada e ative diretamente na pasta, utilizando (.\Scripts\activate.bat) para Windows, com a barra invertida. Caso isso seja feito será necessário voltar uma pasta (cd..) para executar os próximos comandos.  
Para ter acesso aos raspadores é necessário criar um ambiente virtual capaz de isolar as mudanças feitas no repositório mas mesmo assim aproveitando-se do ecossistema criado pelo QD. A partir deste tutorial é possível configurar o ambiente, apenas atente-se com o sistema operacional utilizado, se Windows ou Linux, apenas o Passo 3 muda.

Caso haja um erro com”pinned with ==” na hora de instalar os requerimentos, utilize o pip3 install e adicione um dos comandos abaixo:
--use-pep517
–no-deps

Ambiente instalado: Baixar diários oficiais.
Baixando diários oficiais
https://github.com/okfn-brasil/querido-diario

Analisando os textos dos diários oficiais
>> A partir do download de diários através do comando “scrapy crawl” podem ser baixados três tipos de documento: HTML, PDF ou TXT. É importante observar o tipo de arquivo que foi baixado.
A pasta baixada é o código do município do IBGE (salvo em data_collection/data) e dentro dela existem várias pastas separadas diariamente (em dias que possuem publicação).

https://github.com/okfn-brasil/querido-diario-data-processing
Para realizar as análises dos diários oficiais, é necessário criar um ambiente de virtualização. É recomendado que se instale o podman. Para o Windows, cada máquina podman criada tem o suporte para uma máquina Windows para distribuição Linux. Veja esse tutorial para instalar o podman na sua máquina, sendo ela Windows, Linux ou Mac. Aqui é para Windows.
Seguindo a instalação para Windows, é necessário instalar o Instalador do Windows (extensão msi), a partir daí execute o arquivo executável (.exe).
A partir daí já é possível criar sua máquina virtual pelo comando “podman machine init”. Sempre que for acessá-la escreva “podman machine start”. É necessário instalar o WSL para Windows.
Para acessar o comando “make” pode ser necessário instalar a biblioteca, para isso instale a biblioteca choco pelo TERMINAL NO WINDOWS (ADMIN)l em:

Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Após a instalação, digite “choco install make”. .. https://coffops.com/usando-comando-make-projetos-windows/

Após a instalação do podman, faça um git clone do repositório de processamento na mesma pasta que estão os outros documentos, para facilitar seu trabalho. A partir disso inicie sua máquina podman e execute o comando “make build” (apenas a primeira vez) e depois “make setup”.

Caso não seja possível executar o “make build” por alegação de errao de conexão tente excluir a máquina podman criada e recriar outra, utilizando as permissões de administrador “podman machine set  --rootful”... (não funcionou.)

podman machine init
podman machine start
podman machine ssh

e então: make build
