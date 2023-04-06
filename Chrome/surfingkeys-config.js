settings.scrollStepSize	= 300;
settings.smoothScroll = true;
settings.focusAfterClosed = 'last';
settings.hintAlign = 'left';

// set h/l to go back/forward in history
api.map('h','S')
api.map('l','D')

// set H/L to go to the left/right tab of open tab 
api.map('H','E')
api.map('L','R')

api.map('<Ctrl-j>','<Ctrl-6>')

// Follow link mode hints
api.Hints.style(' \
  font-family: system-ui, sans serif; \
  font-size: 14px; \
  font-weight: 700; \
  border: solid 1px #000000; \
  padding: 2px; \
  color: #111111; \
  background: unset; \
  background-color: #FFA500; \
  box-shadow: 0px 0px; \
');

// Visual mode hints
api.Hints.style(
  'div, div.begin { \
    font-family: system-ui, sans serif; \
    font-size: 14px; \
    font-weight: 700; \
    border: solid 1px #000000; \
    padding: 2px; \
    color: #111111; \
    background: unset; \
    background-color: #E0E0E0; \
    box-shadow: 0px 0px;} \
', 'text');


// set theme
settings.theme = `
.sk_theme {
    font-family: system-ui, Input Sans Condensed, Charcoal, sans-serif;
    font-size: 12pt;
    background: #24272e;
    color: #abb2bf;
}
.sk_theme tbody {
    color: #fff;
}
.sk_theme input {
    color: #d0d0d0;
}
.sk_theme .url {
    color: #61afef;
}
.sk_theme .annotation {
    color: #56b6c2;
}
.sk_theme .omnibar_highlight {
    color: #528bff;
}
.sk_theme .omnibar_timestamp {
    color: #e5c07b;
}
.sk_theme .omnibar_visitcount {
    color: #98c379;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
    background: #303030;
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
    background: #3e4452;
}
#sk_omnibarSearchArea .prompt, #sk_omnibarSearchArea .resultPage, #sk_omnibarSearchArea>input {
    font-size: 20px;
    font-weight: 700;
    padding-bottom: 5px;
}
#sk_omnibarSearchArea .prompt .separator {
    padding-left: 5px;
}
#sk_status, #sk_find {
    font-size: 20pt;
}`;
// click `Save` button to make above settings to take effect.</ctrl-i></ctrl-y>
