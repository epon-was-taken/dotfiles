export EDITOR=nvim
export YOUTUBE_API_KEY=AIzaSyDm7u4LPXpRZktBZU3sLWH4V_sUjPutyqM
export TELEGRAM_BOT_TOKEN="8856849351:AAGKJQscinWp6fb1mA6w64iJtmm3Qc6qhiE"
export TELEGRAM_CHAT_ID="776632009"

# User specific environment
for dir in "$HOME/.local/bin" "$HOME/bin" "$HOME/go/bin" "$HOME/.cargo/bin"; do
  case ":$PATH:" in
  *":$dir:"*) ;; # already in PATH
  *) PATH="$dir:$PATH" ;;
  esac
done
export PATH
export GOPATH=~/go
