# $NetBSD$

PKG_OPTIONS_VAR=		PKG_OPTIONS.OpenIPMI
PKG_SUPPORTED_OPTIONS=		perl python snmp swig
PKG_SUGGESTED_OPTIONS=		perl python snmp swig

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mperl)
CONFIGURE_ARGS+=	--with-perl=${PERl5}
.include "../../lang/perl5/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--with-perl=no
.endif

.if !empty(PKG_OPTIONS:Mpython)
CONFIGURE_ARGS+=	--with-python=${PYTHONBIN}
.include "../../lang/python/pyversion.mk"
.else
CONFIGURE_ARGS+=	--with-python=no
.endif

.if !empty(PKG_OPTIONS:Msnmp)
CONFIGURE_ARGS+=	--with-ucdsnmp=${PREFIX}
.include "../../net/net-snmp/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--with-ucdsnmp=no
.endif

.if !empty(PKG_OPTIONS:Mswig)
CONFIGURE_ARGS+=	--with-swig=${PREFIX}/bin/swig3.0
.include "../../devel/swig3/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--with-swig=no
.endif
