" PARA MAIS FORMAS DE CONFIGURAR SEU EMULADOR DO VIM ACESSE:
"""" https://github.com/esm7/obsidian-vimrc-support#some-help-with-binding-space-chords-doom-and-spacemacs-fans

"""" Desabilita a tecla <Space> para usá-la como leader key: 
" unmap <Space>

"""" Substitui <ESC> por jk: 
" imap jk <Esc>
" vunmap jk <Esc>

"""" Copie para área de transferência do sistema: 
" set clipboard=unnamed

"""" Use leader key + q para fechar o editor: 
" exmap close obcommand workspace:close
" nmap <Space>q :close


"""" Abra o Grafo como leader key + og 
" exmap openGraph obcommand graph:open
" nmap <Space>og :openGraph


"""" Navegação entre notas usando as teclas padrões do vim 
"""" AVISO: é preciso instalar oplugin Cycle Through Panes Plugins https://obsidian.md/plugins?id=cycle-through-panes
" exmap focusRight obcommand editor:focus-right
" nmap <Space>l :focusRight

" exmap focusLeft obcommand editor:focus-left
" nmap <Space>h :focusLeft

" exmap focusTop obcommand editor:focus-top
" nmap <Space>k :focusTop

" exmap focusBottom obcommand editor:focus-bottom
" nmap <Space>j :focusBottom

" """" Abra um documento em uma divisão vertical
" exmap splitVertical obcommand workspace:split-vertical
" nmap <Space>v :splitVertical

" """" Abra um documento em uma divisão horizontal
" exmap splitHorizontal obcommand workspace:split-horizontal
" nmap <Space>s :splitHorizontal

" """" Acione a barra lateral da esquerda
" exmap toggleLeftSidebar obcommand app:toggle-left-sidebar
" nmap <Space>e :toggleLeftSidebar

" """" Acione a barra lateral da direita 
" exmap toggleRightSidebar obcommand app:toggle-right-sidebar
" nmap <Space>E :toggleRightSidebar

" """" Acione a barra de pesquisa 
" exmap openSearch obcommand editor:open-search
" nmap <Space>f :openSearch

" """" Acione a barra de pesquisa e substituição
" exmap openSearchReplace obcommand editor:open-search-replace
" nmap <Space>fs :openSearch

" """" DICA: Altere o estilo da aparência do editor entre Dark e Light 
" exmap darkTheme obcommand theme:use-dark
" nmap <Space>gd :darkTheme

" exmap lightTheme obcommand theme:use-light
" nmap <Space>gl :lightTheme
