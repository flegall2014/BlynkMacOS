#-------------------------------------------------
#
# Project created by QtCreator 2016-10-23T09:16:18
#
#-------------------------------------------------

QT       += core gui xml widgets

TEMPLATE = app

INCLUDEPATH += ../utils ../singleapplication ../gammaramp ../fluxlib


unix {
    DESTDIR = ./bin
    MOC_DIR = ./moc
    OBJECTS_DIR = ./obj
}

win32 {
    DESTDIR = ..\\bin
    MOC_DIR = .\\moc
    OBJECTS_DIR = .\\obj
}

unix {
    QMAKE_CLEAN *= $$DESTDIR/*$$TARGET*
    QMAKE_CLEAN *= $$MOC_DIR/*moc_*
    QMAKE_CLEAN *= $$OBJECTS_DIR/*.o*
}

win32 {
    QMAKE_CLEAN *= $$DESTDIR\\*$$TARGET*
    QMAKE_CLEAN *= $$MOC_DIR\\*moc_*
    QMAKE_CLEAN *= $$OBJECTS_DIR\\*.o*
}

CONFIG(debug, debug|release) {
    LIBS += -L$$OUT_PWD/../bin -lutilsd -lsingleapplicationd -lgammarampd -lfluxlibd
    TARGET = blynkd

} else {
    LIBS += -L$$OUT_PWD/../bin -lutils -lsingleapplication -lgammaramp -lfluxlib
    TARGET = blynk
}

HEADERS += \
    controller.h \
    blynk.h \
    iservice.h \
    imagewidget.h \
    parameters.h \
    utils.h \
    bluelightreducerwidget.h \
    customslider.h \
    animatedcursor.h \
    dimmerwidget.h \
    bluelightreducerpage.h \
    customwindow.h \
    screenbreakpage.h \
    cursorpage.h \
    settingswindow.h \
    aboutwindow.h

SOURCES += \
    main.cpp \
    controller.cpp \
    blynk.cpp \
    imagewidget.cpp \
    parameters.cpp \
    utils.cpp \
    bluelightreducerwidget.cpp \
    customslider.cpp \
    animatedcursor.cpp \
    dimmerwidget.cpp \
    bluelightreducerpage.cpp \
    customwindow.cpp \
    screenbreakpage.cpp \
    cursorpage.cpp \
    settingswindow.cpp \
    aboutwindow.cpp

RESOURCES += \
    resources.qrc

FORMS += \
    dimmerwidget.ui \
    customslider.ui \
    customtooltip.ui \
    cursorpage.ui \
    screenbreakpage.ui \
    bluelightreducerpage.ui \
    cursorpage.ui \
    settingswindow.ui \
    aboutwindow.ui

