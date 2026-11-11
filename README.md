# setup
Machine setup basics, kept in sync across machines.

## Usage
```bash
bash install.sh
```

`install.sh` sets the global git user and editor, installs Claude Code, and copies `tmux.conf` to `~/.tmux.conf`. If an existing `~/.tmux.conf` differs, it is first saved as `~/.tmux.conf.bak.<timestamp>`, and a running tmux server reloads the new config.

### iTerm2 Profile

`iterm_profile.json` holds the iTerm2 profile (both Option keys send Esc+, Option+Left/Right send Esc+b/Esc+f for word movement). To import it, open iTerm2 > Settings > Profiles, click Other Actions... > Import JSON Profiles..., and pick `iterm_profile.json`. Set it as default from the same menu.
