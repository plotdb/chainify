# chainify

chaining a seris of tasks.


## Usage

    chainify(list, handler = function({item,percent}) { ... return Promise.resolve(datum); })
      .then(function({data, fail}) { ... });

    chainify({list, delay}, handler)
      .then(function({data, fail}) { ... });


handler should return Promise.


## License

MIT
