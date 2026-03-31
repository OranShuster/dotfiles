echo Add marketplaces   
claude plugin marketplace add https://github.com/flightlesstux/prompt-caching 2>/dev/null || true
echo Installing plugins
claude plugin install prompt-caching@ercan-ermis 2>/dev/null || true
claude plugin install superpowers@claude-plugins-official 2>/dev/null || true