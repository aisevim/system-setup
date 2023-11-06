HEL::command_not_exist() {
  if ! command -v "$1" &>/dev/null || ! command --version "$1" &>/dev/null; then
    return 1
  fi
}
