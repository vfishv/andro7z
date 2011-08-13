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
CommandLineParser.cpp \
  CRC.cpp \
  IntToString.cpp \
  ListFileUtils.cpp \
  StdInStream.cpp \
  StdOutStream.cpp \
  MyString.cpp \
  StringConvert.cpp \
  StringToInt.cpp \
  UTFConvert.cpp \
  MyWindows.cpp \
  MyVector.cpp \
  Wildcard.cpp
# WIN_OBJS
# 7ZIP_COMMON_OBJS
# UI_COMMON_OBJS
# AR_OBJS
# AR_COMMON_OBJS
# 7Z_OBJS
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
