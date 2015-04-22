# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = Quotes

CONFIG += sailfishapp
PKGCONFIG += zlib

SOURCES += src/Quotes.cpp \
    src/quote.cpp \
    src/quotedb.cpp \
    src/quotemodel.cpp \
    src/internalmodelfacade.cpp \
    src/quotesidregistry.cpp

OTHER_FILES += qml/Quotes.qml \
    qml/cover/CoverPage.qml \
    qml/content/images/*.png \
    rpm/Quotes.changes.in \
    rpm/Quotes.spec \
    rpm/Quotes.yaml \
    translations/*.ts \
    quotesdb/*.json \
    Quotes.desktop \
    Quotes.png \
    qml/pages/AboutPage.qml \
    qml/pages/QuotePage.qml \
    qml/pages/SearchPage.qml \
    qml/pages/Loading.qml

quotes.files = quotesdb/*.json
quotes.path = /usr/share/$${TARGET}

INSTALLS += quotes

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/Quotes-de.ts

HEADERS += \
    src/quote.h \
    src/quotedb.h \
    src/quotemodel.h \
    src/internalmodelfacade.h \
    src/quotesidregistry.h


