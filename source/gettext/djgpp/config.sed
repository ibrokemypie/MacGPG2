# Additional editing of Makefiles
/@GMSGFMT@/ s,\$GMSGFMT,msgfmt,
/@MSGFMT@/ s,\$MSGFMT,msgfmt,
/@XGETTEXT@/ s,\$XGETTEXT,xgettext,
/ac_given_INSTALL=/,/^CEOF/ {
  /^CEOF$/ i\
# DJGPP specific Makefile changes.\
  /^aliaspath[ 	]*=/s,:,";",g\
  /^lispdir[ 	]*=/ c\\\\\
lispdir = \\$(prefix)/gnu/emacs/site-lisp\
  /TEXINPUTS[ 	]*=/s,:,";",g\
  /PATH[ 	]*=/s,:,";",g\
  s,\\.new\\.,_new.,g\
  s,\\.old\\.,_old.,g\
  s,\\.tab\\.c,_tab.c,g\
  s,\\.tab\\.h,_tab.h,g\
  s,\\([1-9]\\)\\.html\\.in,\\1hi,g\
  s,\\([1-9]\\)\\.html,\\1-html,g\
  s,\\([1-9]\\)\\.in,\\1-in,g\
  s,\\.sh\\.in,.sh-in,g\
  s,config\\.h\\.in,config.h-in
  s,COPYING.LIB-2.0,COPYING_LIB.20
  s,COPYING.LIB-2.1,COPYING_LIB.21
  s,gettext_1.html,gettext.1-html
  s,gettext_10.html,gettext.10-html
  s,gettext_11.html,gettext.11-html
  s,gettext_12.html,gettext.12-html
  s,gettext_13.html,gettext.13-html
  s,gettext_14.html,gettext.14-html
  s,gettext_15.html,gettext.15-html
  s,gettext_16.html,gettext.16-html
  s,gettext_2.html,gettext.2-html
  s,gettext_3.html,gettext.3-html
  s,gettext_4.html,gettext.4-html
  s,gettext_5.html,gettext.5-html
  s,gettext_6.html,gettext.6-html
  s,gettext_7.html,gettext.7-html
  s,gettext_8.html,gettext.8-html
  s,gettext_9.html,gettext.9-html
  s,gettext_foot.html,gettext.foot-html
  s,gettext_toc.html,gettext.toc-html
  s,javacomp\\.sh\\.in,javacomp.sh-in
  s,javaexec\\.sh\\.in,javaexec.sh-in
  s,stdbool\\.h\\.in,stdbool.h-in
  s,gettext.1.in,gettext.1-in
  s,ngettext.1.in,ngettext.1-in
  s,gettext.3.in,gettext.3-in
  s,ngettext.3.in,ngettext.3-in
  s,textdomain.3.in,textdomain.3-in
  s,bindtextdomain.3.in,bindtextdomain.3-in
  s,bind_textdomain_codeset.3.in,bind_textdomain_codeset.3-in
  s,gettext.1.html.in,gettext.1hin
  s,ngettext.1.html.in,ngettext.1hin
  s,msgcmp.1.html,msgcmp.1-html
  s,msgfmt.1.html,msgfmt.1-html
  s,msgmerge.1.html,msgmerge.1-html
  s,msgunfmt.1.html,msgunfmt.1-html
  s,xgettext.1.html,xgettext.1-html
  s,msgattrib.1.html,msgattrib.1-html
  s,msgcat.1.html,msgcat.1-html
  s,msgcomm.1.html,msgcomm.1-html
  s,msgconv.1.html,msgconv.1-html
  s,msgen.1.html,msgen.1-html
  s,msgexec.1.html,msgexec.1-html
  s,msgfilter.1.html,msgfilter.1-html
  s,msggrep.1.html,msggrep.1-html
  s,msginit.1.html,msginit.1-html
  s,msguniq.1.html,msguniq.1-html
  s,gettext.3.html,gettext.3-html
  s,ngettext.3.html,ngettext.3-html
  s,textdomain.3.html,textdomain.3-html
  s,bindtextdomain.3.html,bindtextdomain.3-html
  s,bind_textdomain_codeset.3.html,bind_textdomain_codeset.3-html
  s,Makefile\\.in\\.in,Makefile.in-in
  s,format-librep.c,format_librep.c
  s,format-pascal.c,format_pascal.c
  s,blue-ball.gif,b-ball.gif
  s,cyan-ball.gif,c-ball.gif
  s,green-ball.gif,g-ball.gif
  s,magenta-ball.gif,m-ball.gif
  s,red-ball.gif,r-ball.gif
  s,yellow-ball.gif,y-ball.gif
  s,constructors.gif,ctors.gif
  s,variables.gif,vars.gif
  s,package-frame.html,package_frame.html
  s,package-tree.html,package_tree.html
  s,gettext-1,gettext.1
  s,gettext-2,gettext.2
  s,msgattrib-1,msgattrib.1
  s,msgattrib-2,msgattrib.2
  s,msgattrib-3,msgattrib.3
  s,msgattrib-4,msgattrib.4
  s,msgattrib-5,msgattrib.5
  s,msgattrib-6,msgattrib.6
  s,msgattrib-7,msgattrib.7
  s,msgattrib-8,msgattrib.8
  s,msgattrib-9,msgattrib.9
  s,msgattrib-10,msgattrib.10
  s,msgattrib-11,msgattrib.11
  s,msgattrib-12,msgattrib.12
  s,msgattrib-13,msgattrib.13
  s,msgattrib-14,msgattrib.14
  s,msgcat-1,msgcat.1
  s,msgcat-2,msgcat.2
  s,msgcat-3,msgcat.3
  s,msgcat-4,msgcat.4
  s,msgcat-5,msgcat.5
  s,msgcat-6,msgcat.6
  s,msgcat-7,msgcat.7
  s,msgcmp-1,msgcmp.1
  s,msgcmp-2,msgcmp.2
  s,msgcomm-1,msgcomm.1
  s,msgcomm-2,msgcomm.2
  s,msgcomm-3,msgcomm.3
  s,msgcomm-4,msgcomm.4
  s,msgcomm-5,msgcomm.5
  s,msgcomm-6,msgcomm.6
  s,msgcomm-7,msgcomm.7
  s,msgcomm-8,msgcomm.8
  s,msgcomm-9,msgcomm.9
  s,msgcomm-10,msgcomm.10
  s,msgcomm-11,msgcomm.11
  s,msgcomm-12,msgcomm.12
  s,msgcomm-13,msgcomm.13
  s,msgcomm-14,msgcomm.14
  s,msgcomm-15,msgcomm.15
  s,msgcomm-16,msgcomm.16
  s,msgcomm-17,msgcomm.17
  s,msgcomm-18,msgcomm.18
  s,msgcomm-19,msgcomm.19
  s,msgcomm-20,msgcomm.20
  s,msgcomm-21,msgcomm.21
  s,msgcomm-22,msgcomm.22
  s,msgcomm-23,msgcomm.23
  s,msgconv-1,msgconv.1
  s,msgconv-2,msgconv.2
  s,msgconv-3,msgconv.3
  s,msgen-1,msgen.1
  s,msgexec-1,msgexec.1
  s,msgexec-2,msgexec.2
  s,msgfilter-1,msgfilter.1
  s,msgfilter-2,msgfilter.2
  s,msgfmt-1,msgfmt.1
  s,msgfmt-2,msgfmt.2
  s,msgfmt-3,msgfmt.3
  s,msgfmt-4,msgfmt.4
  s,msgfmt-5,msgfmt.5
  s,msgfmt-6,msgfmt.6
  s,msgfmt-7,msgfmt.7
  s,msgfmt-8,msgfmt.8
  s,msgfmt-9,msgfmt.9
  s,msgfmt-10,msgfmt.10
  s,msggrep-1,msggrep.1
  s,msggrep-2,msggrep.2
  s,msggrep-3,msggrep.3
  s,msggrep-4,msggrep.4
  s,msgmerge-1,msgmerge.1
  s,msgmerge-2,msgmerge.2
  s,msgmerge-3,msgmerge.3
  s,msgmerge-4,msgmerge.4
  s,msgmerge-5,msgmerge.5
  s,msgmerge-6,msgmerge.6
  s,msgmerge-7,msgmerge.7
  s,msgmerge-8,msgmerge.8
  s,msgmerge-9,msgmerge.9
  s,msgmerge-10,msgmerge.10
  s,msgmerge-11,msgmerge.11
  s,msgmerge-12,msgmerge.12
  s,msgmerge-13,msgmerge.13
  s,msgmerge-14,msgmerge.14
  s,msgmerge-15,msgmerge.15
  s,msgmerge-16,msgmerge.16
  s,msgmerge-17,msgmerge.17
  s,msgmerge-18,msgmerge.18
  s,msgmerge-19,msgmerge.19
  s,msgmerge-20,msgmerge.20
  s,msgunfmt-1,msgunfmt.1
  s,msguniq-1,msguniq.1
  s,msguniq-2,msguniq.2
  s,msguniq-3,msguniq.3
  s,xgettext-1,xgettext.1
  s,xgettext-2,xgettext.2
  s,xgettext-3,xgettext.3
  s,xgettext-4,xgettext.4
  s,xgettext-5,xgettext.5
  s,xgettext-6,xgettext.6
  s,xgettext-7,xgettext.7
  s,xgettext-8,xgettext.8
  s,xgettext-9,xgettext.9
  s,xgettext-10,xgettext.10
  s,xgettext-11,xgettext.11
  s,xgettext-12,xgettext.12
  s,xgettext-13,xgettext.13
  s,xgettext-14,xgettext.14
  s,xgettext-15,xgettext.15
  s,xgettext-16,xgettext.16
  s,xgettext-17,xgettext.17
  s,format-c-1,format/c.1
  s,format-c-2,format/c.2
  s,format-elisp-1,format/elisp.1
  s,format-elisp-2,format/elisp.2
  s,format-java-1,format/java.1
  s,format-java-2,format/java.2
  s,format-librep-1,format/librep.1
  s,format-librep-2,format/librep.2
  s,format-lisp-1,format/lisp.1
  s,format-lisp-2,format/lisp.2
  s,format-python-1,format/python.1
  s,format-python-2,format/python.2
  s,format-pascal-1,format/pascal.1
  s,format-pascal-2,format/pascal.2
  s,format-ycp-1,format/ycp.1
  s,format-ycp-2,format/ycp.2
  s,lang-c++,lang-cxx
  s,rpath-1a,rpath/1a
  s,rpath-1b,rpath/1b
  s,rpath-2aaa,rpath/2aaa
  s,rpath-2aab,rpath/2aab
  s,rpath-2aac,rpath/2aac
  s,rpath-2aad,rpath/2aad
  s,rpath-2aba,rpath/2aba
  s,rpath-2abb,rpath/2abb
  s,rpath-2abc,rpath/2abc
  s,rpath-2abd,rpath/2abd
  s,rpath-2baa,rpath/2baa
  s,rpath-2bab,rpath/2bab
  s,rpath-2bac,rpath/2bac
  s,rpath-2bad,rpath/2bad
  s,rpath-2bba,rpath/2bba
  s,rpath-2bbb,rpath/2bbb
  s,rpath-2bbc,rpath/2bbc
  s,rpath-2bbd,rpath/2bbd
  s,xg-test1.ok.po,xg-test1.ok-po
  s,rpath-1,rpath/1
  s,rpath-2_a,rpath/2_a
  s,rpath-2_b,rpath/2_b
  s,rpath-2.README,rpath/2.README
  s,rpathcfg.sh,rpathcfg.sh
  s,gettext_\\*\\.,gettext.*-,g\
  s,format-librep,format_librep,g\
  s,format-pascal,format_pascal,g\
  /^TESTS[ 	]*=/,/^$/ s,plural-\\([1-9]\\+\\),plural.\\1,g\
  /^install-info-am:/,/^$/ {\
    /@list=/ s,\\\$(INFO_DEPS),& gettext.i,\
    s,file-\\[0-9\\]\\[0-9\\],& \\$\\$file[0-9] \\$\\$file[0-9][0-9],\
  }\
  /^iso-639\\.texi[ 	]*:.*$/ {\
    s,iso-639,\\$(srcdir)/&,g\
    s,ISO_639,\\$(srcdir)/&,\
  }\
  /^iso-3166\\.texi[ 	]*:.*$/ {\
    s,iso-3166,\\$(srcdir)/&,g\
    s,ISO_3166,\\$(srcdir)/&,\
  }\
  /^# Some rules for yacc handling\\./,$ {\
    /\\\$(YACC)/ a\\\\\
	-@test -f y.tab.c && mv -f y.tab.c y_tab.c\\\\\
	-@test -f y.tab.h && mv -f y.tab.h y_tab.h\
  }\
  /^POTFILES:/,/^$/ s,\\\$@-t,t-\\$@,g\
  s,basename\\.o,,g\
  s,po-gram-gen2\\.h,po-gram_gen2.h,g\
  /^Makefile[ 	]*:/,/^$/ {\
    /CONFIG_FILES=/ s,\\\$(subdir)/\\\$@\\.in,&:\\$(subdir)/\\$@.in-in,\
  }\
  /html:/ s,split$,monolithic,g\
  /^TEXI2HTML[ 	]*=/ s,=[ 	]*,&-,
}

# javacomp.sh is renamed to javacomp.sh-in,
# javaexec.sh is renamed to javaexec.sh-in,
# Makefile.in.in is renamed to Makefile.in-in...
/^CONFIG_FILES=/,/^EOF/ {
  s|lib/javacomp\.sh|&:lib/javacomp.sh-in|
  s|lib/javaexec\.sh|&:lib/javaexec.sh-in|
  s|po/Makefile\.in|&:po/Makefile.in-in|
}

# ...and config.h.in into config.h-in
/^ *CONFIG_HEADERS=/,/^EOF/ {
  s|config\.h|&:config.h-in|
}

# The same as above but this time
# for configure scripts created with Autoconf 2.14a.
/^config_files="\\\\/,/^$/ {
  s|po/Makefile\.in|&:po/Makefile.in-in|
}
/^config_headers="\\\\/,/^$/ {
  s|config\.h|&:config.h-in|
}
/# Handling of arguments./,/^$/ {
  s|po/Makefile\.in|&:po/Makefile.in-in|2
  s|config\.h|&:config.h-in|2
}

# Replace `(command) > /dev/null` with `command > /dev/null`, since
# parenthesized commands always return zero status in the ported Bash,
# even if the named command doesn't exist
/if [^{].*null/,/ then/ {
  /test .*null/ {
    s,(,,
    s,),,
  }
}

# DOS-style absolute file names should be supported as well
/\*) srcdir=/s,/\*,[\\\\/]* | [A-z]:[\\\\/]*,
/\$]\*) INSTALL=/s,\[/\$\]\*,[\\\\/$]* | [A-z]:[\\\\/]*,
/\$]\*) ac_rel_source=/s,\[/\$\]\*,[\\\\/$]* | [A-z]:[\\\\/]*,

# Switch the order of the two Sed commands, since DOS path names
# could include a colon
/ac_file_inputs=/s,\( -e "s%\^%\$ac_given_srcdir/%"\)\( -e "s%:% $ac_given_srcdir/%g"\),\2\1,

# Prevent the spliting of conftest.subs.
# The sed script: conftest.subs is split into 48 or 90 lines long files.
# This will produce sed scripts called conftest.s1, conftest.s2, etc.
# that will not work if conftest.subs contains a multi line sed command
# at line #90. In this case the first part of the sed command will be the
# last line of conftest.s1 and the rest of the command will be the first lines
# of conftest.s2. So both script will not work properly.
# This matches the configure script produced by Autoconf 2.12
/ac_max_sed_cmds=[0-9]/ s,=.*$,=`sed -n "$=" conftest.subs`,
# This matches the configure script produced by Autoconf 2.14a
/ac_max_sed_lines=[0-9]/ s,=.*$,=`sed -n "$=" $ac_cs_root.subs `,

# The following two items are changes needed for configuring
# and compiling across partitions.
# 1) The given srcdir value is always translated from the
#    "x:" syntax into "/dev/x" syntax while we run configure.
/^[ 	]*-srcdir=\*.*$/ a\
    ac_optarg=`echo "$ac_optarg" | sed "s,^\\([A-Za-z]\\):,/dev/\\1,"`
/set X `ls -Lt \$srcdir/ i\
   if `echo $srcdir | grep "^/dev/" - > /dev/null`; then\
     srcdir=`echo "$srcdir" | sed -e "s%^/dev/%%" -e "s%/%:/%"`\
   fi

#  2) We need links across partitions, so we will use "cp -pf" instead of "ln".
/# Make a symlink if possible; otherwise try a hard link./,/EOF/ {
  s,;.*then, 2>/dev/null || cp -pf \$srcdir/\$ac_source \$ac_dest&,
}

# Let libtool use _libs all the time.
/objdir=/s,\.libs,_libs,

# Stock djdev203 does not provide an unsetenv() function,
# so we will use djdev204 CVS tree's one.
/^LTLIBOBJS=/ s,|, unsetenv.c |,

# Stock djdev203 does not provide pw_gecos,
# so we will use djdev204 CVS tree's one.
/^LTLIBOBJS=/ s,|, getpwnam.c |,