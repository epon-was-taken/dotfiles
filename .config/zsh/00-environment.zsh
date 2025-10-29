export EDITOR=nvim

# User specific environment
for dir in "$HOME/.local/bin" "$HOME/bin" "$HOME/go/bin" "$HOME/.cargo/bin"; do
  case ":$PATH:" in
  *":$dir:"*) ;; # already in PATH
  *) PATH="$dir:$PATH" ;;
  esac
done
export PATH
export GOPATH=~/go
