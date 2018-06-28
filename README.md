# chain
A thin, classy theme composed of a chain of information.

[![asciicast](https://asciinema.org/a/129cyab1j0ou83fhaofg8hs2n.png)](https://asciinema.org/a/129cyab1j0ou83fhaofg8hs2n)


## Installation
Install with [Oh My Fish][omf]:

```fish
$ omf install chain
```


## Features
- Customizable prompt elements.
- Default prompt elements such as current Git branch and dirty state.
- If the last command fails, the exit code is displayed.
- An abbreviated path.


## Links
Your prompt in chain consists of a series of *links*, with each link displaying a single piece of information. Not all links are always visible and only show up when you need them.

Links are entirely customizable, and it is easy to create and customize your own links.

Chain comes with six default links (in order from left to right):

- Superuser privileges (`⚡`)
- Number of running background jobs
- The current working directory
- The current Git branch (`⎇`)
- Git working directory dirty (`±`)
- Exit status of the last command

### Custom links
Making your own links is as simple as writing a small function. A link is rendered using a _link function_, which is just a Fish function that outputs two lines: the first line is the color of the link; the second line is the link text. For example, if we wanted a yellow link that showed the current time, we could write a function like this:

```fish
function time_link
  echo yellow
  date '+%H:%M:%S'
end
```

Now we can add it to the end of our prompt:

```fish
chain.push time_link
```

Your links are saved automatically, so it is not necessary to add `chain.push` commands to your configuration. Running the command once is enough.


## Commands
Chain offers several commands you can use to customize and manipulate your prompt. Here is some brief documentation on what these functions do:

### `chain.compile`
To improve performance, the prompt function is actually generated from the configuration dynamically, or "compiled". Normally this function is called for you when needed.

### `chain.defaults`
Resets the prompt to the default set of links.

### `chain.inspect`
A neat-looking debug tool that prints out your chain-related configuration, gives a preview of all your enabled links, and dumps the _compiled prompt_ function.

### `chain.multiline`
Toggle multi-line prompt display on and off. A multi-line prompt can make more room for typing if you have a lot of links in your prompt chain.

### `chain.pop`
Remove the last link in the prompt chain.

### `chain.push <function>`
Add a _link function_ to the end of the prompt chain.

### `chain.shift`
Remove the first link in the prompt chain.

### `chain.unshift <function>`
Add a _link function_ to the beginning of the prompt chain.


## Customization
Chain uses several global variables to customize the prompt appearance. The most important one is `$chain_links`: a list of function names that print out a single link in the prompt.

The glyphs used in the default links can be customized using global variables. Here is a list of glyph-related variables:

- `$chain_prompt_glyph`: The arrow character at the end of the chain, right before the text input.
- `$chain_git_branch_glyph`: Glyph to indicate the Git branch.
- `$chain_git_dirty_glyph`: Glyph to indicate that the working branch has uncommitted changes.
- `$chain_su_glyph`: Glyph to indicate that you have superuser privileges.
- `$chain_link_open_glyph`: Glyph before each individual chain link (default `<`).
- `$chain_link_close_glyph`: Glyph after each individual chain link (default `>`).


## License
[MIT][mit] © [coderstephen][author] et [al][contributors]

[mit]:            http://opensource.org/licenses/MIT
[author]:         https://github.com/coderstephen
[contributors]:   https://github.com/coderstephen/theme-chain/graphs/contributors
[omf]:            https://github.com/oh-my-fish/oh-my-fish
