# $NetBSD: Makefile,v 1.27 2019/08/22 12:23:22 ryoon Exp $

PKGNAME=	gnuradio-doxygen-${VERSION}
COMMENT=	Doxygen documentation of GNU Radio

.include	"../../wip/gnuradio-core/Makefile.common"
.include	"../../wip/gnuradio-core/Nocore.mk"

PYTHON_VERSIONS_INCOMPATIBLE=	27 # py-sphinx

BUILD_DEPENDS+=	doxygen>=1.8.15:../../devel/doxygen
BUILD_DEPENDS+=	${PYPKGPREFIX}-sphinx-[0-9]*:../../textproc/py-sphinx
BUILD_DEPENDS+=	graphviz-[0-9]*:../../graphics/graphviz

DEPENDS+=	web2c-[0-9]*:../../print/web2c
# in case those packages are already installed by other requirement..
DEPENDS+=	texlive-collection-latex-[0-9]*:../../meta-pkgs/texlive-collection-latex
DEPENDS+=	tex-newunicodechar-[0-9]*:../../print/tex-newunicodechar

CMAKE_ARGS+=	-DENABLE_DEFAULT=OFF
CMAKE_ARGS+=	-DENABLE_DOXYGEN=ON
CMAKE_ARGS+=	-DENABLE_SPHINX=ON
CMAKE_ARGS+=	-DSPHINX_EXECUTABLE=${PREFIX}/bin/sphinx-build-${PYVERSSUFFIX}

MAKE_JOBS_SAFE=	no

.include	"../../mk/bsd.pkg.mk"
