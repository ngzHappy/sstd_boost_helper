#-------------------------------------------------
#
# Project created by QtCreator 2019-03-16T10:44:02
#
#-------------------------------------------------

QT       -= core gui

TARGET = boost_all_in_one
TEMPLATE = lib

DEFINES += BOOST_ALL_IN_ONE_LIBRARY

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
        $$PWD/boost_all_in_one.cpp

HEADERS += \
        $$PWD/boost_all_in_one.hpp \
        $$PWD/boost_all_in_one_global.hpp

DEFINES *= BOOST_ALL_DYN_LINK
DEFINES *= BOOST_ALL_NO_LIB
DEFINES *= BOOST_USE_WINDOWS_H

INCLUDEPATH += D:/bst/boost_1_68_0/output

#atomic
DEFINES *= BOOST_ATOMIC_SOURCE
SOURCES += D:/bst/boost_1_68_0/output/libs/atomic/src/lockpool.cpp

#chrono
DEFINES *= BOOST_CHRONO_SOURCE
SOURCES += D:/bst/boost_1_68_0/output/libs/chrono/src/chrono.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/chrono/src/process_cpu_clocks.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/chrono/src/thread_clock.cpp

#date_time
DEFINES *= BOOST_DATE_TIME_SOURCE
SOURCES += D:/bst/boost_1_68_0/output/libs/date_time/src/gregorian/date_generators.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/date_time/src/gregorian/greg_month.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/date_time/src/gregorian/greg_weekday.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/date_time/src/gregorian/gregorian_types.cpp

#system
DEFINES *= BOOST_SYSTEM_SOURCE
SOURCES += D:/bst/boost_1_68_0/output/libs/system/src/error_code.cpp

#exception
SOURCES += D:/bst/boost_1_68_0/output/libs/exception/src/clone_current_exception_non_intrusive.cpp

#thread
DEFINES *= BOOST_THREAD_BUILD_DLL
SOURCES += D:/bst/boost_1_68_0/output/libs/thread/src/future.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/thread/src/tss_null.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/thread/src/win32/thread.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/thread/src/win32/thread_primitives.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/thread/src/win32/tss_dll.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/thread/src/win32/tss_pe.cpp

#context
DEFINES *= BOOST_CONTEXT_SOURCE
#SOURCES += D:/bst/boost_1_68_0/output/libs/context/src/fiber.cpp
#SOURCES += D:/bst/boost_1_68_0/output/libs/context/src/continuation.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/context/src/dummy.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/context/src/execution_context.cpp
SOURCES += D:/bst/boost_1_68_0/output/libs/context/src/windows/stack_traits.cpp

ASM_FILES_TOBUILD += D:/bst/boost_1_68_0/output/libs/context/src/asm/make_x86_64_ms_pe_masm.asm
ASM_FILES_TOBUILD += D:/bst/boost_1_68_0/output/libs/context/src/asm/jump_x86_64_ms_pe_masm.asm
ASM_FILES_TOBUILD += D:/bst/boost_1_68_0/output/libs/context/src/asm/ontop_x86_64_ms_pe_masm.asm

DISTFILES +=   $$ASM_FILES_TOBUILD

asm_cl.input =         ASM_FILES_TOBUILD
asm_cl.output =        ${QMAKE_FILE_BASE}.obj
asm_cl.variable_out =  OBJECTS
asm_cl.commands =      ml /c /Cx /coff /Fo ${QMAKE_FILE_OUT} ${QMAKE_FILE_NAME}

QMAKE_EXTRA_COMPILERS += asm_cl
export(QMAKE_EXTRA_COMPILERS)

#OBJECTS

