dark= False
dark=True


#config.editor.command('')
config.set("editor.command",["urxvt","-e","nvim","{}"])

if dark :
    # modo oscuro
    config.set("colors.webpage.darkmode.enabled",True)
    config.set('colors.webpage.darkmode.policy.images','never')
    config.set("colors.webpage.bg",'#444444')





config.load_autoconfig(False)
#config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

#config.set('content.cookies.accept', 'all', 'devtools://*')
#config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')

#config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')


#config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')
#config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
config.set('auto_save.session',True)
#-----------------customer-----------------------------#
#end sesion

#colors
c.colors.completion.fg = ['#0077aa', '#00aa77', '#7700aa']

c.colors.completion.odd.bg = "#000010"
c.colors.completion.even.bg = '#000010'

c.colors.completion.category.fg = '#000000'
c.colors.completion.category.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #005577, stop:1 #0077aa)'
c.colors.completion.category.border.top = '#0000ff' #?
c.colors.completion.category.border.bottom = '#000010'
c.colors.completion.match.fg = '#50ffff'
c.colors.completion.scrollbar.fg = '#00ffff'
c.colors.downloads.bar.bg = '#000010'
c.colors.downloads.error.bg = '#ff0000'
c.colors.hints.fg = '#000000'#?
c.colors.hints.match.fg = '#000000'
c.colors.messages.info.bg = '#000000'
c.colors.statusbar.url.success.https.fg ="#0077ff"
c.colors.statusbar.normal.bg = '#000010'
c.colors.statusbar.insert.fg = '#00ff77'
c.colors.statusbar.insert.bg = '#000010'
c.colors.statusbar.passthrough.bg = '#ff0000'
c.colors.statusbar.command.bg = '#03071e'
c.colors.statusbar.url.warn.fg = '#00ffff'
c.colors.tabs.bar.bg = '#001020'
c.colors.tabs.odd.bg = '#001020'
c.colors.tabs.even.bg = '#001020'
c.colors.tabs.selected.odd.bg = '#003355'
c.colors.tabs.selected.even.bg = '#00475e'
c.colors.tabs.pinned.odd.bg = '#00ff00' #?
c.colors.tabs.pinned.even.bg = '#ff0000'#?
c.colors.tabs.pinned.selected.odd.bg = '#0000ff'
c.colors.tabs.pinned.selected.even.bg = '#ff0000'
# Top border color of the selected completion item.
c.colors.completion.item.selected.border.top = "#111121"

# Bottom border color of the selected completion item.
c.colors.completion.item.selected.border.bottom = "#111121"
c.colors.completion.item.selected.fg = '#50ffff'
c.colors.completion.item.selected.bg = '#111121'
c.colors.completion.item.selected.match.fg = '#00ff00'
c.fonts.default_family = '"monospace"'
c.fonts.default_size = '9pt'


#key 

config.unbind("<ctrl+tab>")
config.bind("<alt+d>", "tab-next")
config.bind("<alt+a>", "tab-prev")
config.bind("<alt+q>", "quit --save")


config.bind( 'xb','config-cycle tabs.show always never')
#config.bind( 'xtr','set-cmd-text :open   spawn --userscript translate' )
config.bind( 'xtr','spawn --userscript translate' )
#onfig.bind( "<ctrl+shift+y>",'open -t https://www.youtube.com/')
#config.bind( "<ctrl+y>",'open https://www.youtube.com/')




#config.bind( 'xb','config-cycle tabs.show always never')
#config.bind( 'xb','config-cycle tabs.show always never')
#config.bind( 'xb','config-cycle tabs.show always never')
#config.bind( 'xb','config-cycle tabs.show always never')


#aun no funciona con los videos
#darck mode


#config.set("colors.webpage.darkmode.grayscale.all",True)
#config.set("colors.webpage.darkmode.grayscale.images",0.9)
#config.set('colors.webpage.darkmode.threshold.background',0)
#config.set("colors.webpage.preferred_color_scheme",'dark')



#file

#urls
c.content.blocking.hosts.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']
c.completion.favorite_paths = ['https://www.facebook.com/','https://deno.land/','https://github.com/','https://www.youtube.com/']
c.url.default_page = 'https://www.google.com/'
c.url.start_pages = 'https://www.google.com'
#others
c.downloads.location.directory = '~/Downloads'

#colors
