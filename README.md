pagetox-ruby
============

ruby api for html to image and pdf conversion

###Installation###
```
gem install sinatra
gem install imgkit
gem install pdfkit

```
###2nd Dependencies###
 * **Automatic**: `sudo imgkit --install-wkhtmltoimage`
 install latest version into /usr/local/bin
 (overwrite defaults with e.g. ARCHITECTURE=amd64 TO=/home/foo/bin)
 * By hand: http://wkhtmltopdf.org/downloads.html

###Run###
```
ruby pagetox.rb
```
