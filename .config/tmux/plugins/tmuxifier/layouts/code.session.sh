# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Documents/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "code"; then

  new_window "misc"
  split_v 20
  run_cmd "echo 'Hello'"
  split_h 50
  run_cmd "echo 'World !'"
  select_pane 0
  run_cmd "nvim"
fi

finalize_and_go_to_session
