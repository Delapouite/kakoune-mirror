# kakoune-mirror

[kakoune](http://kakoune.org) plugin to grow or shrink selections in both directions.

## Install

Add `mirror.kak` to your autoload dir: `~/.config/kak/autoload/`.

## Usage

Run the `mirror` command successively or `mirror lock` once (`<esc>` to leave).

If you type `l` it will grow the selections one char to their right, but also one char to their left.
To shrink it one char, use `h`.
When the cursor is before the anchor, it does the opposite.

You can also use `w` to grow one word to the right and it will automatically do a `b` on the left.

Finally it works vertically with `j` and `k`. Or `J` and `K` for full lines.

## See Also

[kakoune-expand](https://github.com/occivink/kakoune-expand)

## Licence

MIT
