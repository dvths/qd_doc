O WSL é uma sigla para Subsistema de Windows para Linux, tradução de _Windows Subsystem for Linux_, 

O sistema do Querido Diário foi totalmente desenvolvido para Linux e por isso algumas configurações não funcionam para Windows, sabendo disso uma das maneiras menos trabalhosas é configurar um subsistema para Linux, através do WSL. 

Primeiramente é necessário executar o **Windows Power Shell** como administrador. No terminal digite:

~~~ Windows PowerShell (admin)
wsl --install     ### Instalando o WSL
~~~

Atenção: Recursos mais atuais do WSL exigem um sistema operacional Windows mais recentes (a partir do Windows 10).

Após isso, será possível configurar um nome de usuário e senha para que você possa logar na sua nova máquina. Feito isso é necessário configurar o ambiente para o Querido Diário. É necessário ter Python, Git, Podman e o próprio repositório na sua nova máquina.
Nas máquinas Linux normalmente já está instalado o Python, verifique a partir desse comando:
~~~Linux
python --version
~~~

A partir disso é possível atualizar ou dar continuidade com a instalação do ambiente de trabalho. Para instalar o Podman (para trabalhar com dockers) siga o [tutorial](https://podman.io/docs/installation) de instalação e vá até "Installing on Linux". Somente com a instalação já é possível iniciar o ambiente (utilizando o Makefile).


~~~Linux
sudo apt install python3-venv -y
sudo apt install python3.10-venv
python3 -m venv .venv
source .venv/bin/activate
~~~

Ao iniciar uma nova máquina, já é possível acessá-la no menu iniciar do Windows. Por exemplo, caso tenha instalado o Ubuntu, pesquise assim:

![[Pasted image 20230922140634.png]]

Caso ao iniciar seu terminal Linux apareça o erro **"Error: 0x80370114 Não foi possível iniciar a operação porque um recurso necessário não foi instalado"** ,tente habilitar os recursos Hyper-V. Para isso, digite "hyper-V" em Pesquisar e aparecerá uma opção de "Ativar ou desativar recursos do Windows".

 ![[Pasted image 20231005085703.png]]

Selecione Plataforma do Hipervisor do Windows e clique em Ok. Após esse procedimento, reinicie a sua máquina. 
 
 A partir daí já será possível realizar o git clone de um repositório forked do [querido-diario-data-processing](https://github.com/okfn-brasil/querido-diario-data-processing) e então criar e iniciar um ambiente virtual:
~~~Linux
git clone repositorio_forked_querido-diario
git clone repositorio_forked_querido-diario-data-processing
~~~

Caso nesta etapa tenha dado algum erro de conexão ao host do github, tente reiniciar o terminal Linux pelo comando:

~~~Linux
sudo shutdown -h now
~~~