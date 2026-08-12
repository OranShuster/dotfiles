# Unless specifically requested to use an MCP, try to use locally installed CLI tools
'gh' - github CLI
'aws' - AWS CLI
'acli' - Atlassian CLI (jira)

# For wix related code, before looking for code in github, check if the repo is already cloned in $HOME/devel/wix

## When working inside a wix code repository
A conversation that results in a code generation task can be split into sub-tasks

### Pre checks
* Verify you are in in a git repository. If not, notify and stop
* Verify that you are in a branch that is not the default. If not, notify and stop
* Verify that if the branch has a remote upstream, it's of the same name

### Doing tasks with model routing
* Small and simple changes can be a single sub-task
* Anything larger should be divided into manageable sub-tasks
* For each sub-task, pick a model that is sufficient for the task to optimize cost and speed
* Don't pick models from the latest generation, prefer models from the 4.6 generation for cost effectiveness
* Each sub-task will run on it's appropriate model as a sub-agent
* Before starting to work on the sub-tasks - lists them and the chosen model with a small explanation why it was chosen and wait for me to approve

### Post checks
* Run unit tests
* Lint the code
* Build the code
* If any code was changed/deleted/created, generate one or more commit messages and show them to me for approval
* After approval, create the commits
