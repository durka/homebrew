require "formula"

class Jbofihe < Formula
  homepage "http://www.lojban.org/tiki/jbofi'e"
  head "https://github.com/lojban/jbofihe.git"

  def patches
      DATA
  end

  def install
    ENV.j1
    system "perl", "config.pl", "--prefix=#{prefix}"
    system "make", "all"
    system "make", "install"
  end

end

__END__
diff --git a/Makefile.in b/Makefile.in
index 9d0d3ac..d0deab2 100644
--- a/Makefile.in
+++ b/Makefile.in
@@ -221,7 +221,7 @@ install : jbofihe smujajgau cmafihe jvocuhadju $(DICTNAME)
 	[ -d $(DESTDIR)$(EXEDIR) ] || mkdir -p $(DESTDIR)$(EXEDIR)
 	[ -d $(DESTDIR)$(LIBDIR) ] || mkdir -p $(DESTDIR)$(LIBDIR)
 	[ -d $(DESTDIR)$(MANDIR) ] || mkdir -p $(DESTDIR)$(MANDIR)
-	for e in jbofihe cmafihe smujajgau jvocuhadju vlatai ; do cp $$e $(DESTDIR)$(EXEDIR) ; chmod 755 $(DESTDIR)$(EXEDIR)/$$e ; strip -s $(DESTDIR)$(EXEDIR)/$$e ; done
+	for e in jbofihe cmafihe smujajgau jvocuhadju vlatai ; do cp $$e $(DESTDIR)$(EXEDIR) ; chmod 755 $(DESTDIR)$(EXEDIR)/$$e ; done
 	if [ -r $(DICTNAME) ]; then for d in $(DICTNAME) ; do cp $$d $(DESTDIR)$(LIBDIR) ; chmod 644 $(DESTDIR)$(LIBDIR)/$$d ; done ; fi
 	for m in jbofihe.1 cmafihe.1 smujajgau.1 jvocuhadju.1 vlatai.1 ; do cp $$m $(DESTDIR)$(MANDIR) ; chmod 755 $(DESTDIR)$(MANDIR)/$$m ; done
 
diff --git a/dfasyn/compdfa.c b/dfasyn/compdfa.c
index 2b9c1fd..c13290c 100644
--- a/dfasyn/compdfa.c
+++ b/dfasyn/compdfa.c
@@ -303,7 +303,7 @@ int compress_dfa(DFANode **dfas, int ndfas, int ntokens)/*{{{*/
   int new_ndfas;
 
   /* Safety net */
-  if (ndfas <= 0) return;
+  if (ndfas <= 0) return 0;
 
   local_dfas = dfas;
   Nt = ntokens;

