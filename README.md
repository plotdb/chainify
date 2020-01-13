# chainify

chaining a seris of tasks.


## Usage

```
    chainify(list, handler = function({item,percent}) { ... return datum; })
      .then(function({data, fail}) { ... });
```

```
    chainify({list, delay}, handler)
      .then(function({data, fail}) { ... });
```


## License

MIT
