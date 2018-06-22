# retag
Rename a Git Tag

```
In addition to the other answers:

First you need to build an alias of the old tag name, pointing to the original commit:

git tag new old^{}
Then you need to delete the old one locally:

git tag -d old
Then delete the tag on you remote location(s):

# Check your remote sources:
git remote -v
# The argument (3rd) is your remote location,
# the one you can see with `git remote`. In this example: `origin`
git push origin :refs/tags/old
Finally you need to add your new tag to the remote location. Until you have done this, the new tag(s) will not be added:

git push origin --tags
```
