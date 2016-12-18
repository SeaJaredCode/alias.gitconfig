# GitConfig

Contains general git aliases with gerrit extensions for ease of review.

## Installation
You can install from your bash environment using:

    source <(curl -s https://raw.githubusercontent.com/SeaJaredCode/GitConfig/master/bootstrap.sh)

> **NOTE:** This will default to installing to ~/.gitalias. Ideally that file does not currently exist, but if
> you want it to be elsewhere you will have to clone the repository and run the install script with the path to
> the alias file specified:
>
> *./install.sh path/to/aliases*

You will need to add an [include] block into your .gitconfig. This can be placed anywhere within the file, but
typically you want to preserve the ability to override any aliases you don't want. In that case, make sure the
include section is above your [alias] section.

One fairly safe way to do this is to prepend the file with the include statement:

     echo -e "[include]\n    path=~/.gitalias\n$(cat ~/.gitconfig)"

## Updating with latest aliases/scripts ##
The install and bootstrap scripts are intended to be re-runnable to update with the latest. Follow the same method
you initially installed with.
 
> **Note:** You will want to leave the aliases file as-is and make any personal changes in your .gitconfig or a 
> different include file so it will not get overwritten by updates.

## Aliases
You can view all current aliases (after install) by using:

    git alias

A short list of aliases contained:


| Alias  | Parameters  | Usage                                     |
|------- |-------------| ------------------------------------------|
| st     |             | Shortcut for status |
| co     |             | Shortcut for checkout |
| cu     | [`branch`] | Checks out and updates with latest on origin.<br>Omit branch if you just want to update the branch you're on.|
| ci     |             | Shortcut for commit |
| ca     |             | Shortcut for commit --amend |
| can    |             | Shortcut for commit --amend. Keeps the same commit message. |
| cin    |             | Shortcut for commit. Keeps the same commit message (used mainly in rebase situations). |
| rpm    |             | Shortcut for rebase --preserve-merges |
| cp     |             | Shortcut for cherry-pick |
| rev    | [`branch`] | Submits change for review on Gerrit. Will create branch remotely if necessary.<br>Only necessary to specify branch if headless (or you're submitting to a different branch than you're on). |
| where  | `ref` | Finds all commits in remote with the `ref` specified. |

