# Inline for LaravelPHP #

This package is a wrapper for working w/ [Tijs Verkoyen's CSS to Inline HTML Converter](https://github.com/tijsverkoyen/CssToInlineStyles).

## Install ##

In ``application/bundles.php`` add:

```php
'inline' => array('auto' => true),
```

## Usage ##

Really simple:

```
$html = Inline::run($html);
```

## Limitations ##

* The vendor library doesn't work well using XHTML mode, as I've found several errors.  Thus, I've set the library to always use HTML mode.  You can still throw XHTML at it, but it will always spit back HTML.