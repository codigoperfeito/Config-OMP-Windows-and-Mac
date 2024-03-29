# Preview do Terminal
![image](https://github.com/codigoperfeito/MyConfigPowershell/blob/main/img/img.jpg)


# Instalação Themas Windows Terminal e Nerd-Font

### Instalando Nerd-Fonts 

- Primeiramente devemos entrar no site do [Nerd-Fonts](https://www.nerdfonts.com/font-downloads) onde encontraremos a fonte necessária
- Apos entrar no site, faça download da ***HACK NERD FONT*** depois de baixada entre na pasta e instale somente HACK NF

### Instalando tema no windows terminal e configurando nerd-font 

- Para windows terminal existe um site chamado  [Windows Terminal Theme](https://windowsterminalthemes.dev/)
onde você pode buscar temas de sua<br> preferencia já pre-configurados escolha seu tema após escolher seu tema você simplismente precisar clicar <br> Get-theme e ele copiara automaticamente para você em seguida abra seu windows terminal e entre em<br> settings/configurações ou de formas mais simples **ctrl** + **,** 

- Na aba de opções clique em Abrir Json, apos abrir vai aparecer as configurações de aparencia de temas<br>
você precisa procurar (Ctrl F) *"schemes"* é onde estão os temas, após qualquer um dos temas existe uma virgula, você <br>deve ir ao ultimo, colocar uma VIRGULA (,) e colar seu tema escolhido salve o arquivo e saia.


- perfil padrão > escolha powershell
- Aplicativo padrão do terminal > windows terminal
- Preferencias > aparencia > tema de sua escolha | acrilico > opacidade 50% | Fontes > Hack NF

**Não Esqueça de salvar tudo**

# Instalações de programas e pacotes

*(PT/BR)*<br>
- Para começar é necessário ter instaldo o [Scoop](https://scoop.sh/)

`irm get.scoop.sh | iex`

- Apos instalar o scoop é necessário instalar curl, sudo & gcc  <br>

`scoop install curl sudo gcc`

- Apos instalado devemos seguir para a instalação do [Git](https://git-scm.com/downloads)<br>

*Eu particularmente optei por instalar via winget ... é opcional**<br>

`winget install -e --id git.git`

- Para que possamos editar os codigo eu indico a instalar o [NeoVim](https://neovim.io/)<br>

`scoop install neovim`

# Configurações do sistema e PowerShell

### 1º Organizando os arquivos 📝

- Para começarmos devemos ter em mente a localização de todos os nossos arquivos de configuração <br>
- existem dois arquivos que serão importantes para a configuração e manipulação de atalhos no PS
- esses arquivos serão o ***user_profile.ps1***(importante para importar arquivos e criar atalhos)
- e ***user_omp.json*** (importante para criação do seu proprio thema) ou você só precisa clonar o meu

*eu particularmente prefiro deixar em ~/.config/powershell/ pois acho mais organização referencia do Takuya*

Apos a criação dos arquivos vamos começar...

### 2º Instalando os modulos📝

- Os modulos que serão instalados serão oh-my-posh, posh-git, Terminal-Icons, PSFzf, PSReadLine e z

`install-module oh-my-posh -scope CurrentUser -Force` <br>
`scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json` <br>
`install-module posh-git -scope CurrentUser -Force` <br>
`Install-Module -Name z -AllowClobber`<br>
`install-module -name PSFzf -Scope CurrentUser -Force`<br>
`scoop install fzf`<br>
`install-module -name Terminal-Icons -Repository PSGallery -Force`<br>
`Install-Module -Name PSReadLine -AllowClobber -Force`<br>

### 3º Clonando o Git📝 

- Nessa parte é muito simples deixei tudo pré-configurado para optimizar o tempo de vocês

Entre nas suas respectivas pastas onde vocês escolheram para adicionar seus perfis e deem um ***git clone***

`git clone "https://github.com/codigoperfeito/Config-OMP-Windows-and-Mac"`

- Apos clonar os arquivos basta dar um CD .\MyConfigPowershell e copiar os arquivos para a pasta do perfil

- Agora você só precisa redirecionar para que sempre que abrir o WT ele selecione o perfil da pasta clonada e já configurada

`nvim $PROFILE.CurrentUserCurrentHost`

dentro do arquivo escreva 

*. $env:USERPROFILE\"PASTAQUEVOCÊESCOLHEU"\user_profile.ps1*

`. $env:USERPROFILE\.config\powershell\user_profile.ps1`

***Reinicie seu WT e seja feliz***

### Comandos adicionados 📝 

- Ctrl + R => historico de comandos
- Ctrl + F => procurar arquivo por diretórios
- Ctrl + D => sair da busca

- z "nome da pasta" / z "parte do nome da pasta"
 *ex: z PowerShell / z po (e vai ir diretamente para pasta powershell é um atalho)
 
 ### Creditos 
 
 - Takuya Matsuyama ([craftzdog](https://github.com/craftzdog))
 - Windows Terminal Theme 
 - Oh-My-Posh ([OMP](https://ohmyposh.dev/docs/))
 - Docs Windows Modules ([Docs](https://docs.microsoft.com/en-us/powershell/scripting/developer/module/installing-a-powershell-module?view=powershell-7.2))
 - Link do Video tutorial ([Clique Aqui](https://youtu.be/-KylORyaw1g))
