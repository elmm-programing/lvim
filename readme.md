# Install Lunarvim in NVIM v0.9.0

LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)




## Acknowledgements

 - Make sure you have installed the latest version of Neovim v0.9.0+
 - Have [git](https://cli.github.com/), [make](https://www.gnu.org/software/make/), [pip](https://pypi.org/project/pip/), [python](https://www.python.org/), [npm](https://npmjs.com/), [node](https://nodejs.org/) and [cargo](https://www.rust-lang.org/tools/install) installed on your system.
 - [How to write a Good readme](https://bulldogjob.com/news/449-how-to-write-a-good-readme-for-your-github-project)


# Uninstall Lunarvim in NVIM v0.9.0

bash ~/.local/share/lunarvim/lvim/utils/installer/uninstall.sh

# Tmux config

is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|[ln]?vim?x?)(diff)?$'"


