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


## License
[MIT][mit] © [coderstephen][author] et [al][contributors]

[mit]:            http://opensource.org/licenses/MIT
[author]:         https://github.com/coderstephen
[contributors]:   https://github.com/coderstephen/theme-chain/graphs/contributors
[omf]:            https://github.com/oh-my-fish/oh-my-fish
