# SetupInterview Plugin for [DocPad][docpad]

[![NPM version][npm_version]][view_on_npm]

DocPad plugin to add markup structure to [Setup][setup] interview pages. 


## Usage

Install via NPM:

```bash
$ npm install docpad-plugin-setupinterview
```

Add the `setup` extension to HTML files you want to transform (it must come 
before `html` extension), i.e. _index.setup.html_ or _index.setup.html.md_.

It will split the content into sections with questions (title) and answers
(content).


## Contributing

Clone this repo, install the dependencies from NPM and use the workflows.

```bash
$ git clone https://github.com/almirfilho/docpad-plugin-setupinterview.git
$ cd docpad-plugin-setupinterview
$ npm install
$ grunt
```

### Requirements

- Node.js with NPM
- Grunt-cli


## License

Licensed under the incredibly [permissive][permissive] [MIT license][mit].


[docpad]: http://docpad.org
[npm_version]: https://img.shields.io/npm/v/docpad-plugin-setupinterview.svg
[view_on_npm]: https://npmjs.org/package/docpad-plugin-setupinterview "View this project on NPM"
[setup]: https://github.com/loopinfinito/setup
[permissive]: http://en.wikipedia.org/wiki/Permissive_free_software_licence
[mit]: http://creativecommons.org/licenses/MIT/
