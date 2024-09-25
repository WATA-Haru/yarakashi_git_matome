# initialize and rename branch
git init
git branch -M main

# initial commit (this file)
git add replay.sh
git commit -m "initial commit"

# create files
touch hoge huga piyo
git add hoge huga piyo
git commit hoge -m "commit1 hoge"
git commit huga -m "commit2 huga"
git commit piyo -m "commit3 piyo"
git log --oneline main

# create files (will be revert)
touch file1 file2 file3 file4
git add file1 file2 file3 file4
git commit file1 -m "revertMe! 1"
git commit file2 -m "revertMe! 2"
git commit file3 -m "revertMe! 3"
git commit file4 -m "revertMe! 4"

# revert files
# git revert HEAD~4...HEAD
git revert --no-edit HEAD~4...HEAD
git log --oneline main


# create and switch newBranch
git switch -c newBranch

# cherry pick before reverted commit
git cherry-pick HEAD~8..HEAD~4

# check **newBranch** log
git log --oneline newBranch

