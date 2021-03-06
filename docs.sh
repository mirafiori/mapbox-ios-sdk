#!/bin/sh

VERSION=$( git tag | sort -r | sed -n '1p' )

appledoc \
    --output Docs \
    --project-name "MapBox $VERSION" \
    --project-company MapBox \
    --create-html \
    --create-docset \
    --company-id com.mapbox \
    --ignore build \
    --ignore FMDB \
    --ignore GRMustache \
    --ignore .c \
    --ignore .m \
    --ignore RMAttributionViewController.h \
    --ignore RMConfiguration.h \
    --ignore RMCoordinateGridSource.h \
    --ignore RMDBMapSource.h \
    --ignore RMFoundation.h \
    --ignore RMFractalTileProjection.h \
    --ignore RMGenericMapSource.h \
    --ignore RMGlobalConstants.h \
    --ignore RMLoadingTileView.h \
    --ignore RMMapOverlayView.h \
    --ignore RMMapQuestOpenAerialSource.h \
    --ignore RMMapQuestOSMSource.h \
    --ignore RMMapScrollView.h \
    --ignore RMMapTiledLayerView.h \
    --ignore RMNotifications.h \
    --ignore RMOpenCycleMapSource.h \
    --ignore RMOpenSeaMapLayer.h \
    --ignore RMOpenSeaMapSource.h \
    --ignore RMPath.h \
    --ignore RMPixel.h \
    --ignore RMProjection.h \
    --ignore RMTile.h \
    --ignore RMTileImage.h \
    --ignore RMTileSourcesContainer.h \
    --clean-output \
    --docset-install-path /tmp/docset \
    --index-desc README.markdown \
    --docset-atom-filename docset.atom \
    --docset-feed-url "http://mapbox.com/mapbox-ios-sdk/Docs/publish/%DOCSETATOMFILENAME" \
    --docset-package-url "https://github.com/downloads/mapbox/mapbox-ios-sdk/%DOCSETPACKAGEFILENAME" \
    --publish-docset \
    .