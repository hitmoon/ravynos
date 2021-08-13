CREATE TABLE schema (version int);
INSERT INTO schema VALUES (2);
CREATE TABLE applications (url text, basename text, version int, apprecord blob);
CREATE TABLE typemap (uti text, application text, rank int);
CREATE TABLE extensions (ext text, uti text);
CREATE TABLE mimetypes (mimetype text, uti text)
CREATE TABLE conformance (uti text, conforms text)
INSERT INTO extensions VALUES ('txt','public.text');
INSERT INTO extensions VALUES ('rtf','public.rtf');
INSERT INTO extensions VALUES ('html','public.html');
INSERT INTO extensions VALUES ('htm','public.html');
INSERT INTO extensions VALUES ('xml','public.xml');
INSERT INTO extensions VALUES ('c','public.c-source');
INSERT INTO extensions VALUES ('m','public.objective-c-source');
INSERT INTO extensions VALUES ('cp','public.c-plus-plus-source');
INSERT INTO extensions VALUES ('cpp','public.c-plus-plus-source');
INSERT INTO extensions VALUES ('c++','public.c-plus-plus-source');
INSERT INTO extensions VALUES ('cc','public.c-plus-plus-source');
INSERT INTO extensions VALUES ('cxx','public.c-plus-plus-source');
INSERT INTO extensions VALUES ('mm','public.objective-c-plus-plus-source');
INSERT INTO extensions VALUES ('h','public.c-header');
INSERT INTO extensions VALUES ('hpp','public.c-plus-plus-header');
INSERT INTO extensions VALUES ('h++','public.c-plus-plus-header');
INSERT INTO extensions VALUES ('java','com.sun.java-source');
INSERT INTO extensions VALUES ('jav','com.sun.java-source');
INSERT INTO extensions VALUES ('s','public.assembly-source');
INSERT INTO extensions VALUES ('r','com.apple.rez-source');
INSERT INTO extensions VALUES ('defs','public.mig-source');
INSERT INTO extensions VALUES ('mig','public.mig-source');
INSERT INTO extensions VALUES ('exp','com.apple.symbol-export');
INSERT INTO extensions VALUES ('js','com.netscape.javascript-source');
INSERT INTO extensions VALUES ('jscript','com.netscape.javascript-source');
INSERT INTO extensions VALUES ('javascript','com.netscape.javascript-source');
INSERT INTO extensions VALUES ('sh','public.shell-script');
INSERT INTO extensions VALUES ('command','public.shell-script');
INSERT INTO extensions VALUES ('csh','public.csh-script');
INSERT INTO extensions VALUES ('pl','public.perl-script');
INSERT INTO extensions VALUES ('pm','public.perl-script');
INSERT INTO extensions VALUES ('py','public.python-script');
INSERT INTO extensions VALUES ('rb','public.ruby-script');
INSERT INTO extensions VALUES ('rbw','public.ruby-script');
INSERT INTO extensions VALUES ('php','public.php-script');
INSERT INTO extensions VALUES ('php3','public.php-script');
INSERT INTO extensions VALUES ('php4','public.php-script');
INSERT INTO extensions VALUES ('ph3','public.php-script');
INSERT INTO extensions VALUES ('ph4','public.php-script');
INSERT INTO extensions VALUES ('phtml','public.php-script');
INSERT INTO extensions VALUES ('jnlp','com.sun.java-web-start');
INSERT INTO extensions VALUES ('applescript','com.apple.applescript.text');
INSERT INTO extensions VALUES ('scpt','com.apple.applescript.script');
INSERT INTO extensions VALUES ('o','public.object-code');
INSERT INTO extensions VALUES ('exe','com.microsoft.windows-executable');
INSERT INTO extensions VALUES ('dll','com.microsoft.windows-dynamic-link-library');
INSERT INTO extensions VALUES ('class','com.sun.java-class');
INSERT INTO extensions VALUES ('jar','com.sun.java-archive');
INSERT INTO extensions VALUES ('qtz','com.apple.quartz-composer-composition');
INSERT INTO extensions VALUES ('gtar','org.gnu.gnu-tar-archive');
INSERT INTO extensions VALUES ('tar','public.tar-archive');
INSERT INTO extensions VALUES ('gz','org.gnu.gnu-zip-archive');
INSERT INTO extensions VALUES ('gzip','org.gnu.gnu-zip-archive');
INSERT INTO extensions VALUES ('tgz','org.gnu.gnu-zip-tar-archive');
INSERT INTO extensions VALUES ('hqx','com.apple.binhex-archive');
INSERT INTO extensions VALUES ('bin','com.apple.macbinary-archive');
INSERT INTO extensions VALUES ('vcf','public.vcard');
INSERT INTO extensions VALUES ('vcard','public.vcard');
INSERT INTO extensions VALUES ('jpg','public.jpeg');
INSERT INTO extensions VALUES ('jpeg','public.jpeg');
INSERT INTO extensions VALUES ('jp2','public.jpeg-2000');
INSERT INTO extensions VALUES ('tif','public.tiff');
INSERT INTO extensions VALUES ('tiff','public.tiff');
INSERT INTO extensions VALUES ('pic','com.apple.pict');
INSERT INTO extensions VALUES ('pct','com.apple.pict');
INSERT INTO extensions VALUES ('pict','com.apple.pict');
INSERT INTO extensions VALUES ('pntg','com.apple.macpaint-image');
INSERT INTO extensions VALUES ('png','public.png');
INSERT INTO extensions VALUES ('xbm','public.xbitmap-image');
INSERT INTO extensions VALUES ('qif','com.apple.quicktime-image');
INSERT INTO extensions VALUES ('qtif','com.apple.quicktime-image');
INSERT INTO extensions VALUES ('icns','com.apple.icns');
INSERT INTO extensions VALUES ('mov','com.apple.quicktime-movie');
INSERT INTO extensions VALUES ('qt','com.apple.quicktime-movie');
INSERT INTO extensions VALUES ('avi','public.avi');
INSERT INTO extensions VALUES ('vfw','public.avi');
INSERT INTO extensions VALUES ('mpg','public.mpeg');
INSERT INTO extensions VALUES ('mpeg','public.mpeg');
INSERT INTO extensions VALUES ('m75','public.mpeg');
INSERT INTO extensions VALUES ('m15','public.mpeg');
INSERT INTO extensions VALUES ('mp4','public.mpeg-4');
INSERT INTO extensions VALUES ('3gp','public.3gpp');
INSERT INTO extensions VALUES ('3gpp','public.3gpp');
INSERT INTO extensions VALUES ('3g2','public.3gpp2');
INSERT INTO extensions VALUES ('3gp2','public.3gpp2');
INSERT INTO extensions VALUES ('mp3','public.mp3');
INSERT INTO extensions VALUES ('m4a','public.mpeg-4-audio');
INSERT INTO extensions VALUES ('m4p','com.apple.protected-mpeg-4-audio');
INSERT INTO extensions VALUES ('m4b','com.apple.protected-mpeg-4-audio');
INSERT INTO extensions VALUES ('au','public.ulaw-audio');
INSERT INTO extensions VALUES ('ulw','public.ulaw-audio');
INSERT INTO extensions VALUES ('snd','public.ulaw-audio');
INSERT INTO extensions VALUES ('aifc','public.aifc-audio');
INSERT INTO extensions VALUES ('aiff','public.aiff-audio');
INSERT INTO extensions VALUES ('aif','public.aiff-audio');
INSERT INTO extensions VALUES ('caf','com.apple.coreaudio-format');
INSERT INTO extensions VALUES ('bundle','com.apple.bundle');
INSERT INTO extensions VALUES ('app','com.apple.application-bundle');
INSERT INTO extensions VALUES ('plugin','com.apple.plugin');
INSERT INTO extensions VALUES ('mdimporter','com.apple.metadata-importer');
INSERT INTO extensions VALUES ('wdgt','com.apple.dashboard-widget');
INSERT INTO extensions VALUES ('cpio','public.cpio-archive');
INSERT INTO extensions VALUES ('zip','com.pkware.zip-archive');
INSERT INTO extensions VALUES ('framework','com.apple.framework');
INSERT INTO extensions VALUES ('rtfd','com.apple.rtfd');
INSERT INTO extensions VALUES ('dfont','com.apple.truetype-datafork-suitcase-font');
INSERT INTO extensions VALUES ('otf','public.opentype-font');
INSERT INTO extensions VALUES ('ttf','public.truetype-ttf-font');
INSERT INTO extensions VALUES ('ttc','public.truetype-collection-font');
INSERT INTO extensions VALUES ('suit','com.apple.font-suitcase');
INSERT INTO extensions VALUES ('pfb','com.adobe.postscript-pfb-font');
INSERT INTO extensions VALUES ('pfa','com.adobe.postscript-pfa-font');
INSERT INTO extensions VALUES ('icc','com.apple.colorsync-profile');
INSERT INTO extensions VALUES ('icm','com.apple.colorsync-profile');
INSERT INTO extensions VALUES ('pf','com.apple.colorsync-profile');
INSERT INTO extensions VALUES ('pdf','com.adobe.pdf');
INSERT INTO extensions VALUES ('ps','com.adobe.postscript');
INSERT INTO extensions VALUES ('eps','com.adobe.encapsulated-postscript');
INSERT INTO extensions VALUES ('psd','com.adobe.photoshop-image');
INSERT INTO extensions VALUES ('ai','com.adobe.illustrator.ai-image');
INSERT INTO extensions VALUES ('gif','com.compuserve.gif');
INSERT INTO extensions VALUES ('bmp','com.microsoft.bmp');
INSERT INTO extensions VALUES ('ico','com.microsoft.ico');
INSERT INTO extensions VALUES ('doc','com.microsoft.word.doc');
INSERT INTO extensions VALUES ('xls','com.microsoft.excel.xls');
INSERT INTO extensions VALUES ('ppt','com.microsoft.powerpoint.ppt');
INSERT INTO extensions VALUES ('wav','com.microsoft.waveform-audio');
INSERT INTO extensions VALUES ('wave','com.microsoft.waveform-audio');
INSERT INTO extensions VALUES ('asf','com.microsoft.advanced-systems-format');
INSERT INTO extensions VALUES ('wm','com.microsoft.windows-media-wm');
INSERT INTO extensions VALUES ('wmv','com.microsoft.windows-media-wmv');
INSERT INTO extensions VALUES ('wmp','com.microsoft.windows-media-wmp');
INSERT INTO extensions VALUES ('wma','com.microsoft.windows-media-wma');
INSERT INTO extensions VALUES ('asx','com.microsoft.advanced-stream-redirector');
INSERT INTO extensions VALUES ('wmx','com.microsoft.windows-media-wmx');
INSERT INTO extensions VALUES ('wvx','com.microsoft.windows-media-wvx');
INSERT INTO extensions VALUES ('wax','com.microsoft.windows-media-wax');
INSERT INTO extensions VALUES ('key','com.apple.keynote.key');
INSERT INTO extensions VALUES ('kth','com.apple.keynote.kth');
INSERT INTO extensions VALUES ('tga','com.truevision.tga-image');
INSERT INTO extensions VALUES ('sgi','com.sgi.sgi-image');
INSERT INTO extensions VALUES ('exr','com.ilm.openexr-image');
INSERT INTO extensions VALUES ('fpx','com.kodak.flashpix.image');
INSERT INTO extensions VALUES ('jfx','com.j2.jfx-fax');
INSERT INTO extensions VALUES ('efx','com.js.efx-fax');
INSERT INTO extensions VALUES ('sd2','com.digidesign.sd2-audio');
INSERT INTO extensions VALUES ('rm','com.real.realmedia');
INSERT INTO extensions VALUES ('ram','com.real.realaudio');
INSERT INTO extensions VALUES ('ra','com.real.realaudio');
INSERT INTO extensions VALUES ('smil','com.real.smil');
INSERT INTO extensions VALUES ('sit','com.allume.stuffit-archive');
INSERT INTO extensions VALUES ('sitx','com.allume.stuffit-archive');
INSERT INTO mimetypes VALUES ('text/plain','public.text');
INSERT INTO mimetypes VALUES ('text/rtf','public.rtf');
INSERT INTO mimetypes VALUES ('text/html','public.html');
INSERT INTO mimetypes VALUES ('text/xml','public.xml');
INSERT INTO mimetypes VALUES ('text/javascript','com.netscape.javascript-source');
INSERT INTO mimetypes VALUES ('text/x-perl-script','public.perl-script');
INSERT INTO mimetypes VALUES ('text/x-python-script','public.python-script');
INSERT INTO mimetypes VALUES ('text/x-ruby-script','public.ruby-script');
INSERT INTO mimetypes VALUES ('text/x-php-script','public.php-script');
INSERT INTO mimetypes VALUES ('text/php','public.php-script');
INSERT INTO mimetypes VALUES ('application/php','public.php-script');
INSERT INTO mimetypes VALUES ('application/x-msdownload','com.microsoft.windows-executable');
INSERT INTO mimetypes VALUES ('application/java-archive','com.sun.java-archive');
INSERT INTO mimetypes VALUES ('application/x-quartzcomposer','com.apple.quartz-composer-composition');
INSERT INTO mimetypes VALUES ('application/x-gtar','org.gnu.gnu-tar-archive');
INSERT INTO mimetypes VALUES ('application/x-tar','public.tar-archive');
INSERT INTO mimetypes VALUES ('application/tar','public.tar-archive');
INSERT INTO mimetypes VALUES ('application/mac-binhex40','com.apple.binhex-archive');
INSERT INTO mimetypes VALUES ('application/mac-binhex','com.apple.binhex-archive');
INSERT INTO mimetypes VALUES ('application/binhex','com.apple.binhex-archive');
INSERT INTO mimetypes VALUES ('application/x-macbinary','com.apple.macbinary-archive');
INSERT INTO mimetypes VALUES ('application/macbinary','com.apple.macbinary-archive');
INSERT INTO mimetypes VALUES ('text/directory','public.vcard');
INSERT INTO mimetypes VALUES ('text/vcard','public.vcard');
INSERT INTO mimetypes VALUES ('text/x-vcard','public.vcard');
INSERT INTO mimetypes VALUES ('image/jpeg','public.jpeg');
INSERT INTO mimetypes VALUES ('image/jp2','public.jpeg-2000');
INSERT INTO mimetypes VALUES ('image/tiff','public.tiff');
INSERT INTO mimetypes VALUES ('image/pict','com.apple.pict');
INSERT INTO mimetypes VALUES ('image/x-pict','com.apple.pict');
INSERT INTO mimetypes VALUES ('image/x-macpict','com.apple.pict');
INSERT INTO mimetypes VALUES ('image/png','public.png');
INSERT INTO mimetypes VALUES ('image/x-bitmap','public.xbitmap-image');
INSERT INTO mimetypes VALUES ('image/x-quicktime','com.apple.quicktime-image');
INSERT INTO mimetypes VALUES ('video/quicktime','com.apple.quicktime-movie');
INSERT INTO mimetypes VALUES ('video/avi','public.avi');
INSERT INTO mimetypes VALUES ('video/msvideo','public.avi');
INSERT INTO mimetypes VALUES ('video/x-msvideo','public.avi');
INSERT INTO mimetypes VALUES ('video/mpg','public.mpeg');
INSERT INTO mimetypes VALUES ('video/mpeg','public.mpeg');
INSERT INTO mimetypes VALUES ('video/x-mpg','public.mpeg');
INSERT INTO mimetypes VALUES ('video/x-mpeg','public.mpeg');
INSERT INTO mimetypes VALUES ('video/mp4','public.mpeg-4');
INSERT INTO mimetypes VALUES ('video/mp4v','public.mpeg-4');
INSERT INTO mimetypes VALUES ('video/3gpp','public.3gpp');
INSERT INTO mimetypes VALUES ('audio/3gpp','public.3gpp');
INSERT INTO mimetypes VALUES ('video/3gpp2','public.3gpp2');
INSERT INTO mimetypes VALUES ('audio/3gpp2','public.3gpp2');
INSERT INTO mimetypes VALUES ('audio/mpeg','public.mp3');
INSERT INTO mimetypes VALUES ('audio/mpeg3','public.mp3');
INSERT INTO mimetypes VALUES ('audio/mpg','public.mp3');
INSERT INTO mimetypes VALUES ('audio/mp3','public.mp3');
INSERT INTO mimetypes VALUES ('audio/x-mpeg','public.mp3');
INSERT INTO mimetypes VALUES ('audio/x-mpeg3','public.mp3');
INSERT INTO mimetypes VALUES ('audio/x-mpg','public.mp3');
INSERT INTO mimetypes VALUES ('audio/x-mp3','public.mp3');
INSERT INTO mimetypes VALUES ('audio/basic','public.ulaw-audio');
INSERT INTO mimetypes VALUES ('audio/au','public.ulaw-audio');
INSERT INTO mimetypes VALUES ('audio/snd','public.ulaw-audio');
INSERT INTO mimetypes VALUES ('audio/aiff','public.aiff-audio');
INSERT INTO mimetypes VALUES ('audio/x-aiff','public.aiff-audio');
INSERT INTO mimetypes VALUES ('application/zip','com.pkware.zip-archive');
INSERT INTO mimetypes VALUES ('application/pdf','com.adobe.pdf');
INSERT INTO mimetypes VALUES ('application/postscript','com.adobe.postscript');
INSERT INTO mimetypes VALUES ('image/x-photoshop','com.adobe.photoshop-image');
INSERT INTO mimetypes VALUES ('image/photoshop','com.adobe.photoshop-image');
INSERT INTO mimetypes VALUES ('image/psd','com.adobe.photoshop-image');
INSERT INTO mimetypes VALUES ('application/photoshop','com.adobe.photoshop-image');
INSERT INTO mimetypes VALUES ('image/gif','com.compuserve.gif');
INSERT INTO mimetypes VALUES ('application/msword','com.microsoft.word.doc');
INSERT INTO mimetypes VALUES ('application/vnd.ms-excel','com.microsoft.excel.xls');
INSERT INTO mimetypes VALUES ('application/mspowerpoint','com.microsoft.powerpoint.ppt');
INSERT INTO mimetypes VALUES ('audio/wav','com.microsoft.waveform-audio');
INSERT INTO mimetypes VALUES ('audio/wave','com.microsoft.waveform-audio');
INSERT INTO mimetypes VALUES ('video/x-ms-asf','com.microsoft.advanced-systems-format');
INSERT INTO mimetypes VALUES ('video/x-ms-wm','com.microsoft.windows-media-wm');
INSERT INTO mimetypes VALUES ('video/x-ms-wmv','com.microsoft.windows-media-wmv');
INSERT INTO mimetypes VALUES ('video/x-ms-wmp','com.microsoft.windows-media-wmp');
INSERT INTO mimetypes VALUES ('video/x-ms-wma','com.microsoft.windows-media-wma');
INSERT INTO mimetypes VALUES ('video/x-ms-asx','com.microsoft.advanced-stream-redirector');
INSERT INTO mimetypes VALUES ('video/x-ms-wmx','com.microsoft.windows-media-wmx');
INSERT INTO mimetypes VALUES ('video/x-ms-wpx','com.microsoft.windows-media-wpx');
INSERT INTO mimetypes VALUES ('video/x-ms-wax','com.microsoft.windows-media-wax');
INSERT INTO mimetypes VALUES ('image/targa','com.truevision.tga-image');
INSERT INTO mimetypes VALUES ('image/tga','com.truevision.tga-image');
INSERT INTO mimetypes VALUES ('application/tga','com.truevision.tga-image');
INSERT INTO mimetypes VALUES ('image/sgi','com.sgi.sgi-image');
INSERT INTO mimetypes VALUES ('image/fpx','com.kodak.flashpix.image');
INSERT INTO mimetypes VALUES ('application/vnd.fpx','com.kodak.flashpix.image');
INSERT INTO mimetypes VALUES ('image/efax','com.js.efx-fax');
INSERT INTO mimetypes VALUES ('application/vnd.rn-realmedia','com.real.realmedia');
INSERT INTO mimetypes VALUES ('application/vnd.rn-realaudio','com.real.realaudio');
INSERT INTO mimetypes VALUES ('audio/x-pn-realaudio','com.real.realaudio');
INSERT INTO mimetypes VALUES ('application/smil','com.real.smil');
INSERT INTO mimetypes VALUES ('application/x-stuffit','com.allume.stuffit-archive');
INSERT INTO mimetypes VALUES ('application/stuffit','com.allume.stuffit-archive');
INSERT INTO mimetypes VALUES ('application/x-sit','com.allume.stuffit-archive');
INSERT INTO conformance VALUES ('public.composite-content', 'public.content');
INSERT INTO conformance VALUES ('public.data', 'public.item');
INSERT INTO conformance VALUES ('public.presentation', 'public.composite-content');
INSERT INTO conformance VALUES ('public.disk-image', 'public.archive');
INSERT INTO conformance VALUES ('public.text', 'public.content,public.data');
INSERT INTO conformance VALUES ('public.plain-text', 'public.text');
INSERT INTO conformance VALUES ('public.utf8-plain-text', 'public.plain-text');
INSERT INTO conformance VALUES ('public.utf16-external-plain-text', 'public.plain-text');
INSERT INTO conformance VALUES ('public.utf16-plain-text', 'public.plain-text');
INSERT INTO conformance VALUES ('com.apple.traditional-mac-plain-text', 'public.plain-text');
INSERT INTO conformance VALUES ('public.rtf', 'public.text');
INSERT INTO conformance VALUES ('com.apple.ink.inktext', 'public.data');
INSERT INTO conformance VALUES ('public.html', 'public.text');
INSERT INTO conformance VALUES ('public.xml', 'public.text');
INSERT INTO conformance VALUES ('public.source-code', 'public.plain-text');
INSERT INTO conformance VALUES ('public.c-source', 'public.source-code');
INSERT INTO conformance VALUES ('public.objective-c-source', 'public.source-code');
INSERT INTO conformance VALUES ('public.c-plus-plus-source', 'public.source-code');
INSERT INTO conformance VALUES ('public.objective-c-plus-plus-source', 'public.source-code');
INSERT INTO conformance VALUES ('public.c-header', 'public.source-code');
INSERT INTO conformance VALUES ('public.c-plus-plus-header', 'public.source-code');
INSERT INTO conformance VALUES ('com.sun.java-source', 'public.source-code');
INSERT INTO conformance VALUES ('public.script', 'public.source-code');
INSERT INTO conformance VALUES ('public.assembly-source', 'public.source-code');
INSERT INTO conformance VALUES ('com.apple.rez-source', 'public.source-code');
INSERT INTO conformance VALUES ('public.mig-source','public.source-code');
INSERT INTO conformance VALUES ('com.apple.symbol-export', 'public.source-code');
INSERT INTO conformance VALUES ('com.netscape.javascript-source', 'public.source-code,public.executable');
INSERT INTO conformance VALUES ('public.shell-script', 'public.script');
INSERT INTO conformance VALUES ('public.csh-script', 'public.shell-script');
INSERT INTO conformance VALUES ('public.perl-script', 'public.shell-script');
INSERT INTO conformance VALUES ('public.python-script', 'public.shell-script');
INSERT INTO conformance VALUES ('public.ruby-script', 'public.shell-script');
INSERT INTO conformance VALUES ('public.php-script', 'public.shell-script');
INSERT INTO conformance VALUES ('com.sun.java-web-start', 'public.xml');
INSERT INTO conformance VALUES ('com.apple.applescript.text', 'public.script');
INSERT INTO conformance VALUES ('com.apple.applescript.script', 'public.data');
INSERT INTO conformance VALUES ('public.object-code', 'public.data,public.executable');
INSERT INTO conformance VALUES ('com.apple.mach-o-binary', 'public.data,public.executable');
INSERT INTO conformance VALUES ('com.apple.pef-binary', 'public.data,public.executable');
INSERT INTO conformance VALUES ('com.microsoft.windows-executable', 'public.data,public.executable');
INSERT INTO conformance VALUES ('com.microsoft.dynamic-link-library', 'public.data,public.executable');
INSERT INTO conformance VALUES ('com.sun.java-class', 'public.data,public.executable');
INSERT INTO conformance VALUES ('com.sun.java-archive', 'public.data,public.executable,public.archive');
INSERT INTO conformance VALUES ('com.apple.quartz-composer-composition', 'public.data,public.executable');
INSERT INTO conformance VALUES ('org.gnu.gnu-tar-archive', 'public.data,public.archive');
INSERT INTO conformance VALUES ('public.tar-archive', 'public.data,public.archive');
INSERT INTO conformance VALUES ('org.gnu.gnu-zip-archive', 'public.data,public.archive');
INSERT INTO conformance VALUES ('org.gnu.gnu-zip-tar-archive', 'org.gnu.gnu-zip-archive');
INSERT INTO conformance VALUES ('com.apple.binhex-archive', 'public.data,public.archive');
INSERT INTO conformance VALUES ('com.apple.macbinary-archive', 'public.data,public.archive');
INSERT INTO conformance VALUES ('public.url', 'public.data');
INSERT INTO conformance VALUES ('public.file-url', 'public.url');
INSERT INTO conformance VALUES ('public.vcard', 'public.data,public.content');
INSERT INTO conformance VALUES ('public.image', 'public.data,public.content');
INSERT INTO conformance VALUES ('public.fax', 'public.image');
INSERT INTO conformance VALUES ('public.jpeg', 'public.image');
INSERT INTO conformance VALUES ('public.jpeg-2000', 'public.image');
INSERT INTO conformance VALUES ('public.tiff', 'public.image');
INSERT INTO conformance VALUES ('public.camera-raw-image', 'public.image');
INSERT INTO conformance VALUES ('com.apple.pict', 'public.image');
INSERT INTO conformance VALUES ('com.apple.macpaint-image', 'public.image');
INSERT INTO conformance VALUES ('public.png', 'public.image');
INSERT INTO conformance VALUES ('public.xbitmap-image', 'public.image');
INSERT INTO conformance VALUES ('com.apple.quicktime-image', 'public.image');
INSERT INTO conformance VALUES ('com.apple.icns', 'public.image');
INSERT INTO conformance VALUES ('com.apple.txn.text-multimedia-data', 'public.data,public.composite-content');
INSERT INTO conformance VALUES ('public.audiovisual-content', 'public.data,public.content');
INSERT INTO conformance VALUES ('public.movie', 'public.audiovisual-content');
INSERT INTO conformance VALUES ('public.video', 'public.movie');
INSERT INTO conformance VALUES ('com.apple.quicktime-movie', 'public.movie');
INSERT INTO conformance VALUES ('public.avi', 'public.movie');
INSERT INTO conformance VALUES ('public.mpeg', 'public.movie');
INSERT INTO conformance VALUES ('public.mpeg-4', 'public.movie');
INSERT INTO conformance VALUES ('public.3gpp', 'public.movie');
INSERT INTO conformance VALUES ('public.3gpp2', 'public.movie');
INSERT INTO conformance VALUES ('public.audio', 'public.audiovisual-content');
INSERT INTO conformance VALUES ('public.mp3', 'public.audio');
INSERT INTO conformance VALUES ('public.mpeg-4-audio', 'public.audio,public.mpeg-4');
INSERT INTO conformance VALUES ('com.apple.protected-mpeg-4-audio', 'public.audio');
INSERT INTO conformance VALUES ('public.ulaw-audio', 'public.audio');
INSERT INTO conformance VALUES ('public.aifc-audio', 'public.audio');
INSERT INTO conformance VALUES ('public.aiff-audio', 'public.audio');
INSERT INTO conformance VALUES ('com.apple.coreaudio-format', 'public.audio');
INSERT INTO conformance VALUES ('public.directory', 'public.item');
INSERT INTO conformance VALUES ('public.folder', 'public.directory');
INSERT INTO conformance VALUES ('public.volume', 'public.folder');
INSERT INTO conformance VALUES ('com.apple.package', 'public.directory');
INSERT INTO conformance VALUES ('com.apple.bundle', 'public.directory');
INSERT INTO conformance VALUES ('com.apple.application', 'public.executable');
INSERT INTO conformance VALUES ('com.apple.application-bundle', 'com.apple.package,com.apple.bundle,com.apple.application');
INSERT INTO conformance VALUES ('com.apple.application-file', 'com.apple.application,public.data');
INSERT INTO conformance VALUES ('com.apple.deprecated-application-file', 'com.apple.application-file');
INSERT INTO conformance VALUES ('com.apple.plugin', 'com.apple.package,com.apple.bundle');
INSERT INTO conformance VALUES ('com.apple.metadata-importer', 'com.apple.plugin');
INSERT INTO conformance VALUES ('com.apple.dashboard-widget', 'com.apple.package,com.apple.bundle');
INSERT INTO conformance VALUES ('public.cpio-archive', 'public.data');
INSERT INTO conformance VALUES ('com.pkware.zip-archive', 'public.data,public.archive');
INSERT INTO conformance VALUES ('com.apple.webarchive', 'public.data,public.composite-content');
INSERT INTO conformance VALUES ('com.apple.framework', 'com.apple.bundle');
INSERT INTO conformance VALUES ('com.apple.rtfd', 'com.apple.package,public.composite-content');
INSERT INTO conformance VALUES ('com.apple.flat-rtfd', 'public.data,public.composite-content');
INSERT INTO conformance VALUES ('public.symlink', 'public.item,com.apple.resolvable');
INSERT INTO conformance VALUES ('com.apple.mount-point', 'public.item,com.apple.resolvable');
INSERT INTO conformance VALUES ('com.apple.alias-record', 'public.item,com.apple.resolvable');
INSERT INTO conformance VALUES ('com.apple.alias-file', 'public.item,com.apple.resolvable');
INSERT INTO conformance VALUES ('public.font', 'public.data');
INSERT INTO conformance VALUES ('public.truetype-font', 'public.font');
INSERT INTO conformance VALUES ('com.adobe.postscript-font', 'public.font');
INSERT INTO conformance VALUES ('com.apple.truetype-datafork-suitcase-font', 'public.truetype-font');
INSERT INTO conformance VALUES ('public.opentype-font', 'public.font');
INSERT INTO conformance VALUES ('public.truetype-ttf-font', 'public.truetype-font');
INSERT INTO conformance VALUES ('public.truetype-collection-font', 'public.font');
INSERT INTO conformance VALUES ('com.apple.font-suitcase', 'public.font');
INSERT INTO conformance VALUES ('com.adobe.postscript-lwfn-font', 'com.adobe.postscript-font');
INSERT INTO conformance VALUES ('com.adobe.postscript-pfb-font', 'com.adobe.postscript-font');
INSERT INTO conformance VALUES ('com.adobe.postscript-pfa-font', 'com.adobe.postscript-font');
INSERT INTO conformance VALUES ('com.apple.colorsync-profile', 'public.data');
INSERT INTO conformance VALUES ('public.filename-extension', 'public.case-insensitive-text');
INSERT INTO conformance VALUES ('public.mime-type', 'public.case-insensitive-text');
INSERT INTO conformance VALUES ('com.apple.ostype', 'public.text');
INSERT INTO conformance VALUES ('com.apple.nspboard-type', 'public.text');
INSERT INTO conformance VALUES ('com.adobe.pdf', 'public.data,public.composite-content');
INSERT INTO conformance VALUES ('com.adobe.postscript', 'public.data');
INSERT INTO conformance VALUES ('com.adobe.encapsulated-postscript', 'com.adobe.postscript');
INSERT INTO conformance VALUES ('com.adobe.photoshop-image', 'public.image');
INSERT INTO conformance VALUES ('com.adobe.illustrator.ai-image', 'public.image');
INSERT INTO conformance VALUES ('com.compuserve.gif', 'public.image');
INSERT INTO conformance VALUES ('com.microsoft.bmp', 'public.image');
INSERT INTO conformance VALUES ('com.microsoft.ico', 'public.image');
INSERT INTO conformance VALUES ('com.microsoft.word.doc', 'public.data');
INSERT INTO conformance VALUES ('com.microsoft.excel.xls', 'public.data');
INSERT INTO conformance VALUES ('com.microsoft.powerpoint.ppt', 'public.data,public.presentation');
INSERT INTO conformance VALUES ('com.microsoft.waveform-audio', 'public.audio');
INSERT INTO conformance VALUES ('com.microsoft.advanced-systems-format', 'public.audiovisual-content');
INSERT INTO conformance VALUES ('com.microsoft.windows-media-wm', 'public.movie,com.microsoft.advanced-systems-format');
INSERT INTO conformance VALUES ('com.microsoft.windows-media-wmv', 'public.movie,com.microsoft.advanced-systems-format');
INSERT INTO conformance VALUES ('com.microsoft.windows-media-wmp', 'public.movie,com.microsoft.advanced-systems-format');
INSERT INTO conformance VALUES ('com.microsoft.windows-media-wma', 'public.audio,com.microsoft.advanced-systems-format');
INSERT INTO conformance VALUES ('com.microsoft.advanced-stream-redirector', 'public.xml,public.audiovisual-content');
INSERT INTO conformance VALUES ('com.microsoft.windows-media-wmx', 'public.audio,com.microsoft.advanced-stream-redirector');
INSERT INTO conformance VALUES ('com.microsoft.windows-media-wvx', 'public.audio,com.microsoft.advanced-stream-redirector');
INSERT INTO conformance VALUES ('com.microsoft.windows-media-wax', 'public.audio,com.microsoft.advanced-stream-redirector');
INSERT INTO conformance VALUES ('com.apple.keynote.key', 'com.apple.package,public.presentation');
INSERT INTO conformance VALUES ('com.apple.keynote.kth', 'com.apple.package,public.composite-content');
INSERT INTO conformance VALUES ('com.truevision.tga-image', 'public.image');
INSERT INTO conformance VALUES ('com.sgi.sgi-image', 'public.image');
INSERT INTO conformance VALUES ('com.ilm.openexr-image', 'public.image');
INSERT INTO conformance VALUES ('com.kodak.flashpix.image', 'public.image');
INSERT INTO conformance VALUES ('com.j2.jfx-fax', 'public.fax');
INSERT INTO conformance VALUES ('com.js.efx-fax', 'public.fax');
INSERT INTO conformance VALUES ('com.digidesign.sd2-audio', 'public.audio');
INSERT INTO conformance VALUES ('com.real.realmedia', 'public.movie');
INSERT INTO conformance VALUES ('com.real.realaudio', 'public.audio');
INSERT INTO conformance VALUES ('com.real.smil', 'public.xml');
INSERT INTO conformance VALUES ('com.allume.stuffit-archive', 'public.data,public.archive');

