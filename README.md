# kakoune-mirror

[kakoune](http://kakoune.org) plugin to grow or shrink selections in both directions.

## Install

Add `mirror.kak` to your autoload dir: `~/.config/kak/autoload/`.

## Usage

This plugin provides a `mirror` user-mode.

```
# Suggested mapping
map global normal <a-M> ':enter-user-mode -lock mirror<ret>' -docstring 'mirror lock'
```

For example with the above mapping, press `<a-M>` to enter the mirror mode (`<esc>` to leave).

Then if you type `l` it grows the selections one char to their right, but also one char to their left.
To shrink it one char, use `h`.
When the cursor is before the anchor, it does the opposite.

You can also use `w` to grow one word to the right and it automatically do a `b` on the left.

It works vertically with `j` and `k`. Or `J` and `K` for full lines.

Finally you can also do it for paragraphs or sentences with `p` and `s`.

## See Also

- [kakoune-expand](https://github.com/occivink/kakoune-expand)
- [kakoune-text-objects](https://github.com/Delapouite/kakoune-text-objects)
- [move-line.kak](https://github.com/alexherbo2/move-line.kak)

## Licence

MIT
