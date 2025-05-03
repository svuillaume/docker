docker build -t samv-docker .

version 2 - update
# 🧠 Git Cheat Sheet

Welcome to your ultimate Git command reference! Below you'll find the most essential commands, categorized for easy navigation.

---

## 🛠️ Setup & Config

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --list
Configure your identity for Git commits.

📁 Initialize & Clone
git init                      # Create a new Git repo
git clone <url>              # Clone a repo
git clone git@github.com:me/repo.git  # Clone via SSH

🔄 Working with Changes
git status                   # See current changes
git add <file>               # Stage file(s)
git add .                    # Stage all changes
git commit -m "message"      # Commit with a message
git commit -am "msg"         # Add + commit tracked files
✅ Tip: git commit -am skips git add for already tracked files.

📜 Branching
git branch                   # List branches
git branch <name>           # Create new branch
git checkout <name>         # Switch branch
git checkout -b <name>      # Create and switch
git merge <name>            # Merge branch into current
git branch -d <name>        # Delete branch

🌍 Remotes
git remote -v                            # Show remotes
git remote add origin <url>             # Add remote
git remote set-url origin <new-url>     # Change remote URL

📤 Push & Pull
git push origin <branch>     # Push branch
git pull origin <branch>     # Pull latest changes
git fetch                    # Download commits without merge
🔐 Use SSH to avoid entering credentials every push.

🧭 Stashing
git stash              # Save changes for later
git stash list         # List stashed items
git stash apply        # Reapply last stash
git stash pop          # Apply + remove stash

🕰️ Logs & History
git log                     # Show commit log
git log --oneline --graph   # Compact view
git show <commit>           # Show specific commit

❌ Undo & Reset
git restore <file>          # Undo changes to file
git reset <file>            # Unstage file
git reset --hard            # Discard all changes
git revert <commit>         # Revert a commit
🔍 Useful Tips
🏷️ Use .gitignore to exclude files.

🔀 Use git rebase to clean history.

🐛 Use git bisect to find bugs.

🚀 Advanced
git cherry-pick <commit>     # Apply a commit from another branch
git rebase -i HEAD~3         # Interactive rebase (edit history)
git tag <name>               # Create a tag
git diff                     # Show unstaged changes

🧪 Example Workflow
# Start a new project
git init
git add .
git commit -m "Initial commit"
git remote add origin git@github.com:me/project.git
git push -u origin main
