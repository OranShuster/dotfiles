# Server configuration
export ANTHROPIC_BASE_URL=https://api.synthetic.new/anthropic  # What server to talk to instead of the default
export ANTHROPIC_AUTH_TOKEN=${SYNTHETIC_API_KEY}  # Auth key

# Model configuration
 # The model to use for opus plan mode:
export ANTHROPIC_DEFAULT_OPUS_MODEL=syn:large:vision
# The model to use for most tasks:
export ANTHROPIC_DEFAULT_SONNET_MODEL=syn:large:vision
# Primarily used for summarization. Use a small model to take advantage of
# small model rate limit discounts:
export ANTHROPIC_DEFAULT_HAIKU_MODEL=syn:small:text
# When starting subagents, what model to use:
export CLAUDE_CODE_SUBAGENT_MODEL=syn:large:vision

# Privacy configuration
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1  # Don't send telemetry data
export CLAUDE_CODE_ATTRIBUTION_HEADER=0  # Avoid cache busting due to attribution headers.
