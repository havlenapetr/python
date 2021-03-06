LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/Include

LOCAL_SRC_FILES := \
		Parser/acceler.c \
		Parser/grammar1.c \
		Parser/listnode.c \
		Parser/node.c \
		Parser/parser.c \
		Parser/parsetok.c \
		Parser/bitset.c \
		Parser/metagrammar.c \
		Parser/firstsets.c \
		Parser/grammar.c \
		Parser/pgen.c \
		Parser/myreadline.c \
		Parser/tokenizer.c \
		Python/thread.c \
		Python/_warnings.c \
		Python/Python-ast.c \
		Python/asdl.c \
		Python/ast.c \
		Python/bltinmodule.c \
		Python/ceval.c \
		Python/compile.c \
		Python/codecs.c \
		Python/dynload_shlib.c \
		Python/errors.c \
		Python/frozen.c \
		Python/frozenmain.c \
		Python/future.c \
		Python/getargs.c \
		Python/getcompiler.c \
		Python/getcopyright.c \
		Python/getmtime.c \
		Python/getplatform.c \
		Python/getversion.c \
		Python/graminit.c \
		Python/import.c \
		Python/importdl.c \
		Python/marshal.c \
		Python/modsupport.c \
		Python/mystrtoul.c \
		Python/mysnprintf.c \
		Python/peephole.c \
		Python/pyarena.c \
		Python/pyfpe.c \
		Python/pymath.c \
		Python/pystate.c \
		Python/pythonrun.c \
		Python/structmember.c \
		Python/symtable.c \
		Python/sysmodule.c \
		Python/traceback.c \
		Python/getopt.c \
		Python/pystrcmp.c \
		Python/pystrtod.c \
		Python/formatter_unicode.c \
		Python/formatter_string.c \
		Objects/abstract.c \
		Objects/boolobject.c \
		Objects/bufferobject.c \
		Objects/bytes_methods.c \
		Objects/bytearrayobject.c \
		Objects/cellobject.c \
		Objects/classobject.c \
		Objects/cobject.c \
		Objects/codeobject.c \
		Objects/complexobject.c \
		Objects/descrobject.c \
		Objects/enumobject.c \
		Objects/exceptions.c \
		Objects/genobject.c \
		Objects/fileobject.c \
		Objects/floatobject.c \
		Objects/frameobject.c \
		Objects/funcobject.c \
		Objects/intobject.c \
		Objects/iterobject.c \
		Objects/listobject.c \
		Objects/longobject.c \
		Objects/dictobject.c \
		Objects/methodobject.c \
		Objects/moduleobject.c \
		Objects/object.c \
		Objects/obmalloc.c \
		Objects/rangeobject.c \
		Objects/setobject.c \
		Objects/sliceobject.c \
		Objects/stringobject.c \
		Objects/structseq.c \
		Objects/tupleobject.c \
		Objects/typeobject.c \
		Objects/weakrefobject.c \
		Objects/unicodeobject.c \
		Objects/unicodectype.c \
		Modules/threadmodule.c \
		Modules/signalmodule.c \
		Modules/posixmodule.c  \
		Modules/errnomodule.c  \
		Modules/pwdmodule.c \
		Modules/_sre.c  \
		Modules/_codecsmodule.c  \
		Modules/_weakref.c  \
		Modules/zipimport.c  \
		Modules/symtablemodule.c  \
		Modules/xxsubtype.c \
		Modules/config.c \
		Modules/getpath.c \
		Modules/main.c \
		Modules/gcmodule.c \
		Modules/getbuildinfo.c

LOCAL_MODULE := libpython2_6
LOCAL_MODULE_TAGS := optional

LOCAL_SHARED_LIBRARIES := libdl

include $(BUILD_SHARED_LIBRARY)

#*************** python binary *****************

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/Include
LOCAL_MODULE := python
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := Modules/python.c
LOCAL_SHARED_LIBRARIES := libpython2_6

include $(BUILD_EXECUTABLE)
