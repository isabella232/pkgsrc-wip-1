# $NetBSD: Makefile,v 1.8 2020/05/22 10:56:39 adam Exp $

COLLECTD_PACKAGE=	write_prometheus

COMMENT=		Statistics collection daemon - write_prometheus plugin

.include "../../devel/protobuf-c/buildlink3.mk"
COLLECTD_LIB.protobuf-c=${BUILDLINK_PREFIX.protobuf-c}
.include "../../www/libmicrohttpd/buildlink3.mk"
COLLECTD_LIB.microhttpd=${BUILDLINK_PREFIX.libmicrohttpd}

BUILD_DEPENDS+=	protobuf-[0-9]*:../../devel/protobuf

.include "../../wip/collectd/Makefile.common"

.include "../../mk/bsd.pkg.mk"
