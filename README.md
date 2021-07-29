# pre-commit-cloc

A `pre-commit` hook to check comments in file.

## Installation

Add the following to your

```
  - repo: https://github.com/alma/pre-commit-cloc
    rev: v0.0.5
    hooks:
    - id: cloc
```

## Dependencies

The hook relies on:

* [cloc](https://github.com/AlDanial/cloc)
* [jq](https://stedolan.github.io/jq/)
