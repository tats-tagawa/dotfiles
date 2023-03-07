settings.scrollStepSize	= 200;
settings.smoothScroll = true;
settings.focusAfterClosed = 'last';

api.Hints.style(" \
  font-family: system-ui, sans serif; \
  font-size: 14px; \
  font-weight: 400; \
  border: solid 1px #0000D1; \
  padding: 2px; \
  color: #111111; \
  background: unset; \
  background-color: #FFA500; \
");

// an example to create a new mapping `ctrl-y`
api.mapkey('<ctrl-y>', 'Show me the money', function() {
    Front.showPopup('a well-known phrase uttered by characters in the 1996 film Jerry Maguire (Escape to close).');
});

// an example to replace `T` with `gt`, click `Default mappings` to see how `T` works.
api.map('gt', 'T');

// an example to remove mapkey `Ctrl-i`
api.unmap('<ctrl-i>');

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
    font-size: 20px
}
#sk_status, #sk_find {
    font-size: 20pt;
}`;
// click `Save` button to make above settings to take effect.</ctrl-i></ctrl-y>
