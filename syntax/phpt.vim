if exists('b:current_syntax')
    finish
endif

syntax match phptheader '\v^--(TEST|DESCRIPTION|CREDITS|SKIPIF|CONFLICTS|WHITESPACE_SENSITIVE)--$'
syntax match phptheader '\v^--(CAPTURE_STDIO|EXTENSIONS|POST|PUT|POST_RAW|GZIP_POST|DEFLATE_POST|GET)--$'
syntax match phptheader '\v^--(COOKIE|STDIN|INI|ARGS|ENV|PHPDBG|FILE|FILEEOF|FILE_EXTERNAL|REDIRECTTEST)--$'
syntax match phptheader '\v^--(CGI|XFAIL|EXPECTHEADERS|EXPECT|EXPECTF|EXPECTREGEX|EXPECTREGEX_EXTERNAL|EXPECTREGEX_EXTERNAL|CLEAN)--$'

highlight default link phptheader SpecialComment

source $VIMRUNTIME/syntax/php.vim
let b:current_syntax = 'phpt'
