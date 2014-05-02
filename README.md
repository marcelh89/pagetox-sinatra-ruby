pagetox-ruby
============

ruby api for html to image and pdf conversion

###Installation###
```
bundle install

```
###2nd Dependencies###
 * **Automatic**: `sudo imgkit --install-wkhtmltoimage`
 install latest version into /usr/local/bin
 (overwrite defaults with e.g. ARCHITECTURE=amd64 TO=/home/foo/bin)
 * By hand: http://wkhtmltopdf.org/downloads.html
 * 
 

###change server runtime###
gem install 'thin'

###Run###
```
ruby pagetox.rb
```

###Run with Puma ###
just type 
```
puma
```
