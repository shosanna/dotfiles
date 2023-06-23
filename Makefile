old-default:
	link.sh
	git submodule update --init --recursive

pyenv:
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv

pyenv-virtualenv:
	git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

neovim-deps:
	./neovim-deps.sh
