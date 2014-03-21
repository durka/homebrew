require "formula"

class Jbofihe < Formula
  homepage "http://www.lojban.org/tiki/jbofi'e"
  url "https://github.com/lojban/jbofihe/archive/V0_38_1.tar.gz"
  sha1 "23417dde2b8c2522a2f1f1ed08be56bf22370a0e"
  head "https://github.com/lojban/jbofihe.git"

  def patches
      DATA
  end

  def install
    system "perl", "config.pl", "--prefix=#{prefix}"
    system "make", "all"
    system "make", "install"
  end

end

__END__
diff --git a/Makefile.in b/Makefile.in
index 1c51a29..397b37f 100644
--- a/Makefile.in
+++ b/Makefile.in
@@ -220,7 +220,7 @@ install : jbofihe smujajgau cmafihe jvocuhadju $(DICTNAME)
 	[ -d $(EXEDIR) ] || mkdir -p $(EXEDIR)
 	[ -d $(LIBDIR) ] || mkdir -p $(LIBDIR)
 	[ -d $(MANDIR) ] || mkdir -p $(MANDIR)
-	for e in jbofihe cmafihe smujajgau jvocuhadju vlatai ; do cp $$e $(EXEDIR) ; chmod 755 $(EXEDIR)/$$e ; strip -s $(EXEDIR)/$$e ; done
+	for e in jbofihe cmafihe smujajgau jvocuhadju vlatai ; do cp $$e $(EXEDIR) ; chmod 755 $(EXEDIR)/$$e ; done
 	if [ -r $(DICTNAME) ]; then for d in $(DICTNAME) ; do cp $$d $(LIBDIR) ; chmod 644 $(LIBDIR)/$$d ; done ; fi
 	for m in jbofihe.1 cmafihe.1 smujajgau.1 jvocuhadju.1 vlatai.1 ; do cp $$m $(MANDIR) ; chmod 755 $(MANDIR)/$$m ; done
 
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


