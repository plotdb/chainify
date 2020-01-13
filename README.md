# serialize

serialize a seris of tasks.


## Usage

```
    serialize(list, handler = function({item,percent}) { ... return datum; })
      .then(function({data, fail}) { ... });
```

```
    serialize({list, delay}, handler)
      .then(function({data, fail}) { ... });
```


## License

MIT
