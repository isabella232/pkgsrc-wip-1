# $NetBSD$

BUILD_DIRS=	gb.qt5/src/opengl
GB_DEPENDS=	gambas3-gb-qt5 gambas3-gb-opengl
.include "../../wip/gambas3/Makefile.common"

PKGNAME=	gambas3-gb-qt5-opengl-${GB_VERSION}
MAINTAINER=	bastiangermann@fishpost.de
COMMENT=	OpenGL for Gambas applications with Qt5

BUILDLINK_DEPMETHOD.qt5-qtsvg=		build
BUILDLINK_DEPMETHOD.qt5-qtwebkit=	build
BUILDLINK_DEPMETHOD.qt5-qtx11extras=	build

.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../x11/qt5-qtsvg/buildlink3.mk"
.include "../../x11/qt5-qtwebkit/buildlink3.mk"
.include "../../x11/qt5-qtx11extras/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
