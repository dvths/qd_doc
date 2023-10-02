_Atualizado em: 02/10/2023

O repositório [querido-diario-data-processing](https://github.com/okfn-brasil/querido-diario-data-processing) tem como objetivo gerar buscas mais assertivas para o usuário por meio do uso de técnicas de processamento de linguagem natural. O processo desse repositório pode ser referenciado a partir da imagem da Infraestrutura do Querido Diário no [[fluxograma_1.png]]. As partes referentes à indexação e extração do texto são responsabilidade desse repositório em específico. Afinal, para ter os documentos em formato de texto (.txt) disponíveis na [plataforma](https://queridodiario.ok.org.br/) é necessário que seja feito um processamento desse conteúdo (os PDFs coletados previamente pelo repositório [querido-diario](https://github.com/okfn-brasil/querido-diario)).

Esse é o objetivo principal mas não é o único, já que além da possibilidade da colaboração por meio do desenvolvimento, é também possível aplicar as técnicas de PLN em um _dataset_ específico.

1. **Contribuindo no Desenvolvimento**
 
Sempre fique ligado(a) ao documento de [Contribuição](https://github.com/okfn-brasil/querido-diario-comunidade/blob/main/.github/CONTRIBUTING.md#ecossistema), nele é possível verificar as exigências básicas como formatação _black_, configuração de ambiente seguro, detalhamento nas _[[issues e pull requests]]_. Lembre-se também que as **issues e pull requests são uma parte da documentação do projeto**!  
 
Sabendo desses pontos, é necessário configurar o ambiente de trabalho. Existem três diferentes sistemas operacionais que são compatíveis com o ambiente desenvolvido: Linux (o padrão e raíz), Windows e Mac. Vamos explorar cada um deles.

- **Linux**
Se você já trabalha com Linux seguir as orientações de instalação contidas no [repositório](https://github.com/okfn-brasil/querido-diario-data-processing) serão suficientes para instalar o ambiente.

Alguns possíveis problemas que talvez precisem de um cuidado a mais. (?)

 - **Windows**
 
##### Utilizando WSL

O WSL é uma sigla para Subsistema de Windows para Linux, tradução de _Windows Subsystem for Linux_, 

O sistema do Querido Diário foi totalmente desenvolvido para Linux e por isso algumas configurações não funcionam para Windows, sabendo disso uma das maneiras menos trabalhosas é configurar um subsistema para Linux, através do WSL. 

Primeiramente é necessário executar o **Windows power shell** como administrador. No terminal digite:

~~~ Windows PowerShell (admin)
winget install wsl ##Instalando o WSL
wsl --install
~~~

Atenção: Recursos mais atuais do WSL exigem um sistema operacional Windows mais recentes (a partir do Windows 10). Para baixar um sistema operacional na sua máquina execute 

~~~Windows
install Ubuntu
~~~

Após isso, será possível configurar um nome de usuário e senha para que você possa logar na sua nova máquina. Feito isso é necessário configurar o ambiente para o Querido Diário. É necessário ter Python, Git, Podman e o próprio repositório na sua nova máquina.
Nas máquinas Linux normalmente já está instalado o Python, verifique a partir desse comando:
~~~Linux
python --version
~~~

A partir disso é possível atualizar ou dar continuidade com a instalação do ambiente de trabalho. Para instalar o Podman (para trabalhar com dockers) siga o [tutorial](https://podman.io/docs/installation) de instalação e vá até "Installing on Linux". Somente com a instalação já é possível iniciar o ambiente (utilizando o Makefile).

https://linuxize.com/post/how-to-install-pip-on-ubuntu-18.04/

~~~Linux
sudo apt install python3-venv -y
sudo apt install python3.10-venv
python3 -m venv .venv
source .venv/bin/activate
~~~

Ao iniciar uma nova máquina, já é possível acessá-la no menu iniciar do Windows. Por exemplo, caso tenha instalado o Ubuntu, pesquise assim:

![[Pasted image 20230922140634.png]]

 A partir daí já será possível realizar o git clone de um repositório forked do [[qd-data-processing]] e então criar e iniciar um ambiente virtual:
~~~Linux
 py3 -m venv .venv
 source .venv/Scripts/activate
 ~~~

Assim como está documentado no repositório. 

Após essa etapa é necessário **[[conectar ao querido-diario]]** ao banco de dados gerados pelo repositório [[querido-diario]] o qual é responsável por extrair os diários oficiais. Se a conexão não for feita, esse repositório não possui documentos para processar. Faça o fork do repositório [[querido-diario]] e [[querido-diario-data-processing]] na sua conta do Github e a partir daí faça o clone para a sua máquina Linux desses repositórios

~~~Linux
git clone repositorio_forked_querido-diario
git clone repositorio_forked_querido-diario-data-processing
~~~

Para fazer a conexão você precisará ter baixado e instalado tudo que for necessário no repositório querido-diario em outro lugar na sua máquina WSL. Deixe as pastas próximas uma da outra para facilitar seu trabalho. Abra uma outra máquina Ubuntu para iniciar o repositório querido-diario.

Caso haja um erro com "pinned with == "  na hora de instalar os requerimentos, utilize o pip3 install e adicione um dos comandos abaixo:
~~~Linux
--use-pep517
–no-deps
~~~ 
 
 - **Mac**
 ...
 
2. **Contribuindo no geral**

- Como salvar os diários oficiais de forma local
         a) Utilizando somente o repositório [[querido-diario]]

3. **Casos especiais**

---- Mudar CSV para incluir ASSOCIAÇÕES (!!!)