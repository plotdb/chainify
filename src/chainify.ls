(->
  chainify = (opt, proc) -> new Promise (res, rej) ->
    if Array.isArray(opt) => [list, delay] = [opt, 0]
    else [list, delay] = [opt.list or [], opt.delay or 0]
    len = list.length
    ret = {data: [], fail: []}
    _ = (list) ->
      item = list.splice(0,1).0
      if !item => return res ret
      proc {item, percent: (list.length / len) * 100}
        .then (d) ->
          ret.data.push {item, data: d}
        .catch (e) ->
          ret.fail.push {item, error: e}
        .finally -> setTimeout (-> _ list), delay or 0
    _ list

  if window? => window.chainify = chainify
  if module? => module.exports = chainify
)!
