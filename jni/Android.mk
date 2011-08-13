# Copyright (C) 2011 SNDA
# Author: tangyaguang@snda.com

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Module name
LOCAL_MODULE    := 7za

# Local defines copy from '/Alone'
MY_LOCAL_DEFINES = -DBREAK_HANDLER -DUNICODE -D_UNICODE

# Local defines copy from 'makefile.linux_cross_arm
MY_MACHINE_DEFINES = -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE \
					 -DNDEBUG -D_REENTRANT -DENV_UNIX \
					 -D_7ZIP_LARGE_PAGES

# Compose CXXFLAGS
MY_CFLAGS = $(MY_LOCAL_DEFINES) $(MY_MACHINE_DEFINES)

# C src dir
MY_C_DIR = $(LOCAL_PATH)/C
# CPP src dir
MY_CPP_DIR = $(LOCAL_PATH)/CPP

# 7zip src dir
MY_7ZIP_DIR = $(MY_CPP_DIR)/7zip

# 7zip ui src dir
MY_7ZIP_UI_DIR = $(MY_7ZIP_DIR)/UI

# CONSOLE_OBJS
MY_CONSOLE_SRC = $(MY_7ZIP_UI_DIR)/BenchCon.cpp \
                 $(MY_7ZIP_UI_DIR)/ConsoleClose.cpp \
                 $(MY_7ZIP_UI_DIR)/ExtractCallbackConsole.cpp \
                 $(MY_7ZIP_UI_DIR)/List.cpp \
                 $(MY_7ZIP_UI_DIR)/Main.cpp \
                 $(MY_7ZIP_UI_DIR)/MainAr.cpp \
                 $(MY_7ZIP_UI_DIR)/OpenCallbackConsole.cpp \
                 $(MY_7ZIP_UI_DIR)/PercentPrinter.cpp \
                 $(MY_7ZIP_UI_DIR)/UpdateCallbackConsole.cpp \
                 $(MY_7ZIP_UI_DIR)/UserInputUtils.cpp

# common src dir
MY_COMMON_SRC_DIR = $(MY_CPP_DIR)/Common
# COMMON_OBJS
MY_COMMON_SRC = $(MY_COMMON_SRC_DIR)/CommandLineParser.cpp \
                $(MY_COMMON_SRC_DIR)/CRC.cpp \
                $(MY_COMMON_SRC_DIR)/IntToString.cpp \
                $(MY_COMMON_SRC_DIR)/ListFileUtils.cpp \
                $(MY_COMMON_SRC_DIR)/StdInStream.cpp \
                $(MY_COMMON_SRC_DIR)/StdOutStream.cpp \
                $(MY_COMMON_SRC_DIR)/MyString.cpp \
                $(MY_COMMON_SRC_DIR)/StringConvert.cpp \
                $(MY_COMMON_SRC_DIR)/StringToInt.cpp \
                $(MY_COMMON_SRC_DIR)/UTFConvert.cpp \
                $(MY_COMMON_SRC_DIR)/MyWindows.cpp \
                $(MY_COMMON_SRC_DIR)/MyVector.cpp \
                $(MY_COMMON_SRC_DIR)/Wildcard.cpp

MY_WIN_SRC_DIR = $(MY_CPP_DIR)/Windows
# WIN_OBJS
MY_WIN_SRC = $(MY_WIN_SRC_DIR)/Error.cpp \
             $(MY_WIN_SRC_DIR)/FileDir.cpp \
             $(MY_WIN_SRC_DIR)/FileFind.cpp \
             $(MY_WIN_SRC_DIR)/FileIO.cpp \
             $(MY_WIN_SRC_DIR)/FileName.cpp \
             $(MY_WIN_SRC_DIR)/PropVariant.cpp \
             $(MY_WIN_SRC_DIR)/PropVariantConversions.cpp \
             $(MY_WIN_SRC_DIR)/Synchronization.cpp \
             $(MY_WIN_SRC_DIR)/System.cpp \
             $(MY_WIN_SRC_DIR)/Time.cpp

MY_7ZIP_COMMON_SRC_DIR = $(MY_7ZIP_DIR)/Common
# 7ZIP_COMMON_OBJS
MY_7ZIP_COMMON_SRC = $(MY_7ZIP_COMMON_SRC_DIR)/CreateCoder.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/CWrappers.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/FilePathAutoRename.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/FileStreams.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/FilterCoder.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/InBuffer.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/InOutTempBuffer.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/LimitedStreams.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/LockedStream.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/MemBlocks.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/MethodId.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/MethodProps.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/OffsetStream.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/OutBuffer.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/OutMemStream.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/ProgressMt.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/ProgressUtils.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/StreamBinder.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/StreamObjects.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/StreamUtils.cpp \
                     $(MY_7ZIP_COMMON_SRC_DIR)/VirtThread.cpp

# 7ZIP_UI_COMMON_OBJS
MY_7ZIP_UI_COMMON_SRC_DIR = $(MY_7ZIP_UI_DIR)/Common
MY_7ZIP_UI_COMMON_SRC =  $(MY_7ZIP_UI_COMMON_SRC_DIR)/ArchiveCommandLine.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/ArchiveExtractCallback.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/ArchiveOpenCallback.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/Bench.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/DefaultName.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/EnumDirItems.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/Extract.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/ExtractingFilePath.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/LoadCodecs.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/OpenArchive.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/PropIDUtils.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/SetProperties.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/SortUtils.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/TempFiles.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/Update.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/UpdateAction.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/UpdateCallback.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/UpdatePair.cpp \
                         $(MY_7ZIP_UI_COMMON_SRC_DIR)/UpdateProduce.cpp

# AR_OBJS
MY_AR_SRC_DIR = $(MY_7ZIP_DIR)/Archive
MY_AR_SRC  = $(MY_AR_SRC_DIR)/Bz2Handler.cpp \
             $(MY_AR_SRC_DIR)/DeflateProps.cpp \
             $(MY_AR_SRC_DIR)/GzHandler.cpp \
             $(MY_AR_SRC_DIR)/LzmaHandler.cpp \
             $(MY_AR_SRC_DIR)/PpmdHandler.cpp \
             $(MY_AR_SRC_DIR)/SplitHandler.cpp \
             $(MY_AR_SRC_DIR)/XzHandler.cpp \
             $(MY_AR_SRC_DIR)/ZHandler.cpp

# AR_COMMON_OBJS
MY_AR_COMMON_DIR = $(MY_AR_SRC_DIR)/Common
MY_AR_COMMON_SRC = $(MY_AR_COMMON_DIR)/CoderMixer2.cpp \
                   $(MY_AR_COMMON_DIR)/CoderMixer2MT.cpp \
                   $(MY_AR_COMMON_DIR)/CrossThreadProgress.cpp \
                   $(MY_AR_COMMON_DIR)/DummyOutStream.cpp \
                   $(MY_AR_COMMON_DIR)/FindSignature.cpp \
                   $(MY_AR_COMMON_DIR)/HandlerOut.cpp \
                   $(MY_AR_COMMON_DIR)/InStreamWithCRC.cpp \
                   $(MY_AR_COMMON_DIR)/ItemNameUtils.cpp \
                   $(MY_AR_COMMON_DIR)/MultiStream.cpp \
                   $(MY_AR_COMMON_DIR)/OutStreamWithCRC.cpp \
                   $(MY_AR_COMMON_DIR)/ParseProperties.cpp

# 7Z_OBJS
MY_7Z_SRC_DIR = $(MY_AR_SRC_DIR)/7z
MY_7Z_SRC = $(MY_7Z_SRC_DIR)/7zCompressionMode.cpp \
            $(MY_7Z_SRC_DIR)/7zDecode.cpp \
            $(MY_7Z_SRC_DIR)/7zEncode.cpp \
            $(MY_7Z_SRC_DIR)/7zExtract.cpp \
            $(MY_7Z_SRC_DIR)/7zFolderInStream.cpp \
            $(MY_7Z_SRC_DIR)/7zFolderOutStream.cpp \
            $(MY_7Z_SRC_DIR)/7zHandler.cpp \
            $(MY_7Z_SRC_DIR)/7zHandlerOut.cpp \
            $(MY_7Z_SRC_DIR)/7zHeader.cpp \
            $(MY_7Z_SRC_DIR)/7zIn.cpp \
            $(MY_7Z_SRC_DIR)/7zOut.cpp \
            $(MY_7Z_SRC_DIR)/7zProperties.cpp \
            $(MY_7Z_SRC_DIR)/7zSpecStream.cpp \
            $(MY_7Z_SRC_DIR)/7zUpdate.cpp \
            $(MY_7Z_SRC_DIR)/7zRegister.cpp

# MY_CONSOLE_SRC MY_COMMON_SRC MY_WIN_SRC MY_7ZIP_COMMON_SRC MY_7ZIP_UI_COMMON_SRC MY_AR_SRC MY_AR_COMMON_SRC MY_7Z_SRC
# CAB_OBJS
# TAR_OBJS
# ZIP_OBJS
# COMPRESS_OBJS
# CRYPTO_OBJS
# C_OBJS

# OBJ_CRC32
MY_CRC32_C_SRC = $(MY_C_DIR)/7zCrc.c $(MY_C_DIR)/7zCrcOpt.c
# UTILITY_OBJS

# Source file list
LOCAL_SRC_FILES := hello-jni.c

include $(BUILD_SHARED_LIBRARY)
