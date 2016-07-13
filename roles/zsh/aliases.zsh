# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Get OS X Software Updates, and update Homebrew
alias update!='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup'

alias reload!='. ~/.zshrc'
