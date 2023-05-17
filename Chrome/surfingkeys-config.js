settings.scrollStepSize = 400;
settings.smoothScroll = true;
settings.focusAfterClosed = 'last';
settings.hintAlign = 'left';
settings.tabsThreshold = 0;

settings.blocklistPattern = /.*docs\.google\.com.*/i
// set h/l to go back/forward in history
api.map('h', 'S')
api.map('l', 'D')

// set H/L to go to the left/right tab of open tab 
api.map('H', 'E')
api.map('L', 'R')

// set ctrl-j to switch to last viewed tab
api.map('<Ctrl-j>', '<Ctrl-6>')

// set o to open in active tab
api.map('o', 'go')

// Follow link mode hints
api.Hints.style(' \
  font-family: ui-monospace, Menlo, monospace; \
  font-size: 14px; \
  font-weight: 700; \
  border: solid 1px #1E1E2E; \
  padding: 2px; \
  color: #1E1E2E; \
  background: unset; \
  background-color: #F2CDCD; \
  box-shadow: 0px 0px; \
');

// Visual mode hints
api.Hints.style(
  'div, div.begin { \
    font-family: ui-monospace, Menlo, monospace; \
    font-size: 14px; \
    font-weight: 700; \
    border: solid 1px #1E1E2E; \
    padding: 2px; \
    color: #1E1E2E; \
    background: unset; \
    background-color: #CBA6F7; \
    box-shadow: 0px 0px;} \
', 'text');


// set theme
settings.theme = `
.sk_theme {
    font-family: system-ui, sans-serif;
    font-size: 14px;
    background: #1e1e2e;
    color: #A6ADC8;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.5);
}

.sk_theme tbody {
    color: #fff;
}

.sk_theme input {
    color: #d0d0d0;
    font-family: system-ui, sans-serif;
}

.sk_theme .url {
    color: #89B4FA;
}

.sk_theme .annotation {
    color: #56b6c2;
}

.sk_theme .sk_omnibar_middle {
    padding: 1rem;
}

.sk_theme .omnibar_highlight {
    color: #F38BA8;
}

.sk_theme .omnibar_timestamp {
    color: #F2CDCD;
}

.sk_theme .omnibar_visitcount {
    color: #A6E3A1;
}

.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
    background: #313244;
}

#sk_omnibarSearchArea .prompt {
    display: none;
}

#sk_omnibarSearchResult li.focused div.url {
    white-space: nowrap;
}

.sk_theme #sk_omnibarSearchResult ul li.focused {
    background: #45475A;
}

#sk_omnibarSearchArea .prompt, #sk_omnibarSearchArea .resultPage, #sk_omnibarSearchArea>input {
    font-size: 16px;
    font-weight: 700;
    padding: 0px 0px 5px 0px;
}

#sk_omnibarSearchArea .prompt .separator {
    padding-left: 5px;
}

#sk_status {
    padding: 4px;
    right: 1%;
    bottom: 1%;
    background-color: #1e1e2e;
}
#sk_status, #sk_find {
    font-size: 16px;
    color: #A6E3A1;

}
`;
