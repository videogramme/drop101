<?php

/**
 * A LaravelPHP package for converting email CSS to inline.
 *
 * @package    Inline
 * @author     Scott Travis <scott.w.travis@gmail.com>
 * @link       http://github.com/swt83/laravel-inline
 * @license    MIT License
 */

class Inline
{
	public static function run($html)
	{
		// include library
		require_once(__DIR__.'/../vendor/inline/css_to_inline_styles.php');
		
		// build object
		$clean = new CSSToInlineStyles();
		
		// set html
		$clean->setHTML($html);
		
		// css included w/ html
		$clean->setUseInlineStylesBlock(true);
		
		// convert to html
		$html = $clean->convert(false); // false for HTML mode (not XHTML, works better)
		
		// return
		return $html;
	}
	
	public static function convert($html)
	{
		// legacy alias
		return static::run($html);
	}
}