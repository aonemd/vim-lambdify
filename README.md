<div align="center">
  <h1>
    vim-lambdify
  </h1>

  A vim plugin that conceals lambdas/inline functions with a lambda character
  for various languages.

  This is my fork of [calebsmith/vim-lambdify](https://github.com/calebsmith/vim-lambdify).
</div>

![vim-lambdify-example](example/screenshot.png)


## Requirements

Vim >= 7.3 (for the conceal feature)

Some file types rely on syntax files built-in to Vim >= 7.4

### N.B.

The [vim-polyglot](https://github.com/sheerun/vim-polyglot) plugin is a dependency for the JavaScript arrow function (`=>`) to work properly, since the default syntax file is outdated.

For Java it's necessary to change this line in the default Java syntax file (`$VIMRUNTIME\syntax\java.vim`):

```viml
syn match javaError "<<<\|\.\.\|=>\|||=\|&&=\|[^-]->\|\*\/"
```

to:

```viml
syn match javaError "<<<\|\.\.\|=>\|||=\|&&=\|\*\/"
```
Otherwise the `->` operator will be highlighted as error by default. You can use the ![vim-java](https://github.com/vim-jp/vim-java) plugin, that already has this correction.

## Installation

Install `aonemd/vim-lambdify` using a plugin manger such as:
[vim-plug](https://github.com/junegunn/vim-plug),
[NeoBundle](https://github.com/Shougo/neobundle.vim),
[Vundle](https://github.com/gmarik/Vundle.vim), or
[Pathogen](https://github.com/tpope/vim-pathogen).

There's a highlight group that's set by default for the conceal characters. To
overwrite it, add the following to `~/.vimrc` with the your favorite highlight
group:

```viml
let g:vimlambdify_lambda_hi_group = "Operator"
```

Overview
--------

Vim's conceal feature allows for some text to be replaced with something else
for display purposes, without changing the underlying representation of what
is saved into the file. Plugins such as vim-haskellConceal and vim-cute-python
use this to replace many different things with more pithy/mathy symbols. The
approach taken here is to replace *only* lambdas, but to do so for many
different languages to avoid having to use many plugins for a single feature.

Additionally, some plugins lose syntax highlighting for concealed characters.
vim-lambdify makes efforts to ensure highlighting is kept.

At the moment, the following languages have lambda conceal support through
vim-lambdify:

- JavaScript
- TypeScript
- PureScript
- Haskell
- Elm
- Clojure
- Scheme
- Erlang
- Python
- Ruby
- Java
- C#

Acknowledgements
----------------
Many thanks for the ideas and some implementation details taken from the
following plugins:

- Twinside/vim-haskellConceal
- ehamberg/vim-cute-python
- dkinzer/vim-schemer
- tyok/js-mask
