# Ruby on Rails 3 Paperclip pdf to swf Processor #

This gem is Paperclip processor, utilizing swftools in order to convert uploaded pdf to swf.

## Requirements ##

* [Paperclip][0] ~> 2.4
* [SwfTools][2]

For older versions of paperclip (2.3 and below), please use v0.0.4 of this gem.
## Installation ##

This gem is written and tested on Ruby on Rails 3 only. However, I see no reason why it should not work on earlier versions, as long as Paperclip is functional.

In order to install it, add

    gem 'pdf_to_swf-paperclip-processor'
    
to your Gemfile and run

    bundle install
   
in your console. Bundler should take care of all the rest.

## SwfTools Instalation ##

Install [swftools][2] from source or using your favorite package manager. On OS X, the easiest way to do it is by using [Homebrew][3].

    brew install swftools
    
Various Linux distributions should use similar methods with their respected package managers.

If you are using Windows, you are in luck (this time), swftools also has a Windows binary.

## Using Processor ##

Use it as you would any other Paperclip processor. In your model:

    class Document < ActiveRecord::Base
      
      has_attached_file :pdf,
                    :styles => {
                       :swf => { 
                         :params => "-z -j 100 -qq -G",
                         :format => "swf" }
                      },
                      :processors => [:pdf_to_swf]
      
    end

                      
which will convert your pdf document into swf , and keep both files (.swf and .pdf) on the server

### Params ###

Params have not been extrapolated and are passed directly to pdf2swf application. Documentation for those can be found on [swftools wiki][5].

    -h , --help                    Print short help message and exit
    -V , --version                 Print version info and exit
    -o , --output file.swf         Direct output to file.swf. If file.swf contains '%' (file%.swf), then each page goes to a seperate file.
    -p , --pages range             Convert only pages in range with range e.g. 1-20 or 1,4,6,9-11 or
    -P , --password password       Use password for deciphering the pdf.
    -v , --verbose                 Be verbose. Use more than one -v for greater effect.
    -z , --zlib                    Use Flash 6 (MX) zlib compression.
    -i , --ignore                  Allows pdf2swf to change the draw order of the pdf. This may make the generated
    -j , --jpegquality quality     Set quality of embedded jpeg pictures to quality. 0 is worst (small), 100 is best (big). (default:85)
    -s , --set param=value         Set a SWF encoder specific parameter. See pdf2swf -s help for more information.
    -w , --samewindow              When converting pdf hyperlinks, don't make the links open a new window. 
    -t , --stop                    Insert a stop() command in each page. 
    -T , --flashversion num        Set Flash Version in the SWF header to num.
    -F , --fontdir directory       Add directory to the font search path.
    -b , --defaultviewer           Link a standard viewer to the swf file. 
    -l , --defaultloader           Link a standard preloader to the swf file which will be displayed while the main swf is loading.
    -B , --viewer filename         Link viewer filename to the swf file. 
    -L , --preloader filename      Link preloader filename to the swf file. 
    -q , --quiet                   Suppress normal messages.  Use -qq to suppress warnings, also.
    -S , --shapes                  Don't use SWF Fonts, but store everything as shape.
    -f , --fonts                   Store full fonts in SWF. (Don't reduce to used characters).
    -G , --flatten                 Remove as many clip layers from file as possible. 
    -I , --info                    Don't do actual conversion, just display a list of all pages in the PDF.
    -Q , --maxtime n               Abort conversion after n seconds. Only available on Unix.

## Release info ##

Be warned, this gem is released as early beta version. If you are using it you are doing so on your own responsibility.

Have fun with it and drop me a note if you like it.

## LICENCE ##


               DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
                        Version 2, December 2004 

     Copyright (C) 2004 Armin Pašalić

     Everyone is permitted to copy and distribute verbatim or modified 
     copies of this license document, and changing it is allowed as long 
     as the name is changed. 

                DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
       TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 

      0. You just DO WHAT THE FUCK YOU WANT TO. 



[0]: https://github.com/thoughtbot/paperclip
[2]: http://www.swftools.org/
[3]: http://mxcl.github.com/homebrew/
[4]: http://www.swftools.org/faq.html
[5]: http://wiki.swftools.org/index.php/Pdf2swf
