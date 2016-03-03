# chain
A thin, classy theme composed of a chain of information.

[![asciicast](https://asciinema.org/a/129cyab1j0ou83fhaofg8hs2n.png)](https://asciinema.org/a/129cyab1j0ou83fhaofg8hs2n)


## Installation
Install with [Oh My Fish][omf]:

```fish
$ omf install chain
```


## Features
- Displays current Git branch and dirty state.
- If the last command fails, the exit code is displayed.
- An abbreviated path.


## Links
Your prompt in chain consists of a series of *links*, with each link displaying a single piece of information. Not all links are always visible and only show up when you need them. Below are all the possible links (in order from left to right):

- Superuser privileges (`⚡`)
- The current working directory
- The current Git branch (`⎇`)
- Git working directory dirty (`±`)
- Exit status of the last command


## Customization
The glyphs used in the chain can be customized using global variables. Here is a list of the available variables:

- `$chain_prompt_glyph`: The arrow character at the end of the chain, right before the text input.
- `$chain_git_branch_glyph`: Glyph to indicate the Git branch.
- `$chain_git_dirty_glyph`: Glyph to indicate that the working branch has uncommitted changes.
- `$chain_su_glyph`: Glyph to indicate that you have superuser privileges.


## License
[MIT][mit] © [coderstephen][author] et [al][contributors]

[mit]:            http://opensource.org/licenses/MIT
[author]:         https://github.com/coderstephen
[contributors]:   https://github.com/coderstephen/theme-chain/graphs/contributors
[omf]:            https://github.com/oh-my-fish/oh-my-fish
