<p align="center"><img src="docs/dotfiles_heading.png" width=150 alt="dotfiles-icon"></p>
<h2 align="center">🔧 ~ dotfiles [macos]</h2>

### Branches:

1. [`stable`](https://github.com/michalspano/.dotfiles/tree/main)               [ `OK`  ]
2. [`experimental`](https://github.com/michalspano/.dotfiles/tree/experimental) [ `WIP` ]

## Previews

### `~/.config/*`

|            name            |                 preview                 |
|:--------------------------:|:---------------------------------------:|
|  [`alacritty`][alacritty]  |  ![alacritty-demo](docs/alacritty.png)  |
|    [`lazygit`][lazygit]    |    ![lazygit-demo](docs/lazygit.png)    |
|       [`nvim`][nvim]       |       ![nvim-demo](docs/nvim.png)       |
| [`sketchybar`][sketchybar] | ![sketchybar-demo](docs/sketchybar.png) |
|   [`spotify`][spicetify]   |    ![spotify-demo](docs/spotify.png)    |

<!-- links -->

[alacritty]: https://github.com/alacritty/alacritty
[lazygit]: https://github.com/jesseduffield/lazygit
[nvim]: https://github.com/neovim/neovim
[sketchybar]: https://github.com/FelixKratz/SketchyBar
[spicetify]: https://spicetify.app/

### Others

|        name        |             preview             |
|:------------------:|:-------------------------------:|
|   [`idle`][idle]   |  ![idle-demo](docs/idlerc.png)  |
|   [`tmux`][tmux]   |   ![tmux-demo](docs/tmux.png)   |
| [`iterm2`][iterm2] | ![iterm2-demo](docs/iterm2.png) |

<!-- links -->

[idle]: https://docs.python.org/3/library/idle.html
[tmux]: https://github.com/tmux/tmux
[iterm2]: https://github.com/gnachman/iTerm2

## Notes

Here I write some __notes__ that I consider important for the understanding of these `dotfiles`.

### Current Tiling Window Manager

I'm using the [`Amethyst`](https://github.com/ianyh/Amethyst) __tiling window manager__, though I'm trying to transition to [`yabai`](https://github.com/koekeishiya/yabai) at the present moment. The `yabai` tiling window manager requires the following: `.yabairc`, `.skhdrc`. Thus, I include them in this __repository__, although they are still _work in progress_. I plan to __fully__ switch to `yabai` in the future. 

### `macOS` & `unix`

I plan to create a __branch__ with configurations that are compatible with `unix` (not only `macOS`).
