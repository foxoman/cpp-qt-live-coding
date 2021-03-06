QT       += testlib qml
QT       -= gui

TARGET = tests
CONFIG += console
CONFIG -= app_bundle
CONFIG += c++14

TEMPLATE = app

include(../3rdparty/catch/catch.pri)
include(../3rdparty/trompeloeil/trompeloeil.pri)

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

LIB_PATH = $$PWD/../lib
INCLUDEPATH += $$LIB_PATH

HEADERS += $$LIB_PATH/filewatcher.h
SOURCES += $$LIB_PATH/filewatcher.cpp

SOURCES += \
    test_filewatcher.cpp \
    main.cpp
DEFINES += SRCDIR=\\\"$$PWD/\\\"

INSTALLS =
