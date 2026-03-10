#! bash oh-my-bash.module
# Description: Integrate mise (https://mise.jdx.dev), a polyglot tool version manager
#
# @var[opt] OMB_PLUGIN_MISE_QUIET set to 'true' to suppress mise activation output

if _omb_util_command_exists mise; then
  if [[ ${OMB_PLUGIN_MISE_QUIET-} == true ]]; then
    eval "$(mise activate bash --quiet)"
  else
    eval "$(mise activate bash)"
  fi

  alias mi='mise install'
  alias mu='mise use'
  alias mr='mise run'
  alias mx='mise exec'
  alias mls='mise ls'
  alias mlsr='mise ls-remote'
fi
