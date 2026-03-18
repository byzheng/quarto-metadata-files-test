# quarto-metadata-files-test

Step to reproduce this error

Run the follow command to compile index

```
quarto render .\index.qmd --log-level debug
```

The output is 

```
Quarto version: 1.8.27
projectContext: Found Quarto project in C:\Users\<username>\Downloads\temp
Loaded deno-dom-native
Creating SassCache at C:\Users\<username>\Downloads\temp\.quarto\quarto-session-temp3d24a6c32ba2343f\sass
Returning SassCache at C:\Users\<username>\Downloads\temp\.quarto\quarto-session-temp3d24a6c32ba2343f\sass
SassCache.getOrSet(...)
SassCache.getFromHash(hash=b6f0df7317bbb561c9c92d7f1227b9f5, inputHash=fd059154817e7c17790f0a8731684a4c, force=undefined)
  cache miss
  cache miss, setting
SassCache.setFromHash(b6f0df7317bbb561c9c92d7f1227b9f5, fd059154817e7c17790f0a8731684a4c), ...
[execProcess] C:\Users\<username>\AppData\Local\Programs\Quarto\bin\tools\x86_64\dart-sass\sass.bat C:\Users\<username>\Downloads\temp\.quarto\quarto-session-temp3d24a6c32ba2343f\2b859fa899cb9896.scss C:\Users\<username>\Downloads\temp\.quarto\quarto-session-temp3d24a6c32ba2343f\sass\b6f0df7317bbb561c9c92d7f1227b9f5.css --style compressed --quiet --load-path=C:\Users\<username>\AppData\Local\Programs\Quarto\share\formats\html\bootstrap\dist\scss --load-path=C:\Users\<username>\AppData\Local\Programs\Quarto\share\formats\html\bslib\bslib-scss
[execProcess] Success: true, code: 0
Creating SassCache at C:\Users\<username>\AppData\Local\quarto\sass
Returning SassCache at C:\Users\<username>\AppData\Local\quarto\sass
SassCache.getOrSet(...)
SassCache.getFromHash(hash=0920dd6d7437995b8cdf7429764427b1, inputHash=bf48c57be4e9d04eb9c2b8cd2e16fa17, force=undefined)
  cache hit
  cache hit
Windows: Using code page 1252
[NotebookContext]: Writing all notebooks to C:\Users\<username>\Downloads\temp\.quarto\quarto-session-temp3d24a6c32ba2343f\a20c2469158fe431.json
-- Searching for R binary --
Looking for 'Rscript' in QUARTO_R: undefined
Looking for 'Rscript' in R_HOME: undefined
Looking for 'Rscript' in PATH.
[execProcess] CMD /C where Rscript
[execProcess] Success: true, code: 0
Found in PATH at C:\Users\<username>\AppData\Local\Programs\R\R-4.5\bin\Rscript.exe
pandoc --verbose --trace
  to: html
  output-file: index.html
  standalone: true
  title-prefix: test
  section-divs: true
  html-math-method: mathjax
  wrap: none
  default-image-extension: png
  css:
    - styles.css
  toc: true
  variables: {}

metadata
  document-css: false
  link-citations: true
  date-format: long
  lang: en
  theme:
    - cosmo
    - brand
  title: test

[execProcess] C:\Users\<username>\AppData\Local\Programs\Quarto\bin\tools\pandoc +RTS -K512m -RTS --defaults C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\quarto-defaults94e6f020d7d15f86.yml C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\quarto-inputd0ccc7a82e30a56e.md --metadata-file C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\quarto-metadataa1e3556145d674f2.yml --verbose --trace --data-dir C:\Users\<username>\AppData\Local\Programs\Quarto\share\pandoc\datadir
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\template.patched from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\template.patched
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\metadata.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\metadata.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\styles.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\styles.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-block.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\title-metadata.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\_title-meta-author.html
[INFO] Loaded C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\toc.html from C:\Users\<username>\AppData\Local\Temp\quarto-sessiona89124bc3b1eb2a1\f4fa3382a17d6afd\3ae0541da7ed9807\toc.html
[trace] Parsed [Plain [Str "long"]] at line 1
[trace] Parsed [Plain [Str "en"]] at line 1
[trace] Parsed [Plain [Str "true"]] at line 1
[trace] Parsed [Plain [Str "1.8.27"]] at line 1
[trace] Parsed [Plain [Str "cosmo"]] at line 1
[trace] Parsed [Plain [Str "brand"]] at line 1
[trace] Parsed [Plain [Str "test"]] at line 1
[trace] Parsed [Plain [Str "On",Space,Str "this",Space,Str "page"]] at line 1
[trace] Parsed [] at line 3
[trace] Parsed [Para [Str "This",Space,Str "is",Space,Str "a",Space,Str "Qu at line 5
[trace] Parsed [Para [Str "To",Space,Str "learn",Space,Str "more",Space,Str at line 10
[trace] Parsed [Para [Span ("",["hidden","quarto-markdown-envelope-contents at line 17
[trace] Parsed [Div ("quarto-navigation-envelope",["hidden"],[]) [Para [Spa at line 21
[trace] Parsed [Para [Span ("",["hidden","quarto-markdown-envelope-contents at line 28
[trace] Parsed [Div ("quarto-meta-markdown",["hidden"],[]) [Para [Span ("", at line 32
[INFO] Running filter C:/Users/<username>/AppData/Local/Programs/Quarto/share/filters/main.lua
[INFO] Completed filter C:/Users/<username>/AppData/Local/Programs/Quarto/share/filters/main.lua in 15 ms
[execProcess] Success: true, code: 0
[execProcess] C:\Users\<username>\AppData\Local\Programs\R\R-4.5\bin\Rscript.exe C:\Users\<username>\AppData\Local\Programs\Quarto\share\rmd\rmd.R
[execProcess] Success: true, code: 0
[execProcess] C:\Users\<username>\AppData\Local\Programs\R\R-4.5\bin\Rscript.exe C:\Users\<username>\AppData\Local\Programs\Quarto\share\rmd\rmd.R
[execProcess] Success: true, code: 0
[execProcess] C:\Users\<username>\AppData\Local\Programs\R\R-4.5\bin\Rscript.exe C:\Users\<username>\AppData\Local\Programs\Quarto\share\rmd\rmd.R
[execProcess] Success: true, code: 0
[listing] Completing staged feeds in C:\Users\<username>\Downloads\temp
[listing] Completing listing items in C:\Users\<username>\Downloads\temp
[listing] Completing listing items for 1 files
[listing] Creating content reader
[listing] Completing listing items C:\Users\<username>\Downloads\temp\index.qmd
[listing] Writing global listing index for C:\Users\<username>\Downloads\temp
[NotebookContext]: Starting Cleanup
Output created: _site\index.html
```

Notice the Rscript.exe is called three times

```
[execProcess] C:\Users\<username>\AppData\Local\Programs\R\R-4.5\bin\Rscript.exe C:\Users\<username>\AppData\Local\Programs\Quarto\share\rmd\rmd.R
[execProcess] Success: true, code: 0
[execProcess] C:\Users\<username>\AppData\Local\Programs\R\R-4.5\bin\Rscript.exe C:\Users\<username>\AppData\Local\Programs\Quarto\share\rmd\rmd.R
[execProcess] Success: true, code: 0
[execProcess] C:\Users\<username>\AppData\Local\Programs\R\R-4.5\bin\Rscript.exe C:\Users\<username>\AppData\Local\Programs\Quarto\share\rmd\rmd.R
[execProcess] Success: true, code: 0
```

It is working as normal under these cases. The output is normal without repeating calling `Rscript.exe`

* Rename the utils.R into utils.qmd. 
* Merge _website.yml into _quarto.yml.



