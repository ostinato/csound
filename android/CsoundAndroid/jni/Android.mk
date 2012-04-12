LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

CSOUND_SRC_ROOT := ../../..
LIBSNDFILE_SRC_DIR := $(LOCAL_PATH)/../../../../android/libsndfile-android/jni/

LOCAL_MODULE   := csoundandroid
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../H $(LOCAL_PATH)/../../../ $(LIBSNDFILE_SRC_DIR) $(LOCAL_PATH)/../../../Engine $(LOCAL_PATH)/../../../interfaces
LOCAL_CFLAGS := -O3 -D__BUILDING_LIBCSOUND -DENABLE_NEW_PARSER -DLINUX -DHAVE_DIRENT_H -DHAVE_FCNTL_H -DHAVE_UNISTD_H -DHAVE_STDINT_H -DHAVE_SYS_TIME_H -DHAVE_SYS_TYPES_H -DHAVE_TERMIOS_H 
LOCAL_CPPFLAGS :=$(LOCAL_CFLAGS)
###

LOCAL_SRC_FILES := $(CSOUND_SRC_ROOT)/Engine/auxfd.c \
$(CSOUND_SRC_ROOT)/Engine/cfgvar.c \
$(CSOUND_SRC_ROOT)/Engine/corfiles.c \
$(CSOUND_SRC_ROOT)/Engine/entry1.c \
$(CSOUND_SRC_ROOT)/Engine/envvar.c \
$(CSOUND_SRC_ROOT)/Engine/express.c \
$(CSOUND_SRC_ROOT)/Engine/extract.c \
$(CSOUND_SRC_ROOT)/Engine/fgens.c \
$(CSOUND_SRC_ROOT)/Engine/insert.c \
$(CSOUND_SRC_ROOT)/Engine/linevent.c \
$(CSOUND_SRC_ROOT)/Engine/memalloc.c \
$(CSOUND_SRC_ROOT)/Engine/memfiles.c \
$(CSOUND_SRC_ROOT)/Engine/musmon.c \
$(CSOUND_SRC_ROOT)/Engine/namedins.c \
$(CSOUND_SRC_ROOT)/Engine/otran.c \
$(CSOUND_SRC_ROOT)/Engine/rdorch.c \
$(CSOUND_SRC_ROOT)/Engine/rdscor.c \
$(CSOUND_SRC_ROOT)/Engine/scsort.c \
$(CSOUND_SRC_ROOT)/Engine/scxtract.c \
$(CSOUND_SRC_ROOT)/Engine/sort.c \
$(CSOUND_SRC_ROOT)/Engine/sread.c \
$(CSOUND_SRC_ROOT)/Engine/swrite.c \
$(CSOUND_SRC_ROOT)/Engine/swritestr.c \
$(CSOUND_SRC_ROOT)/Engine/twarp.c \
$(CSOUND_SRC_ROOT)/InOut/libsnd.c \
$(CSOUND_SRC_ROOT)/InOut/libsnd_u.c \
$(CSOUND_SRC_ROOT)/InOut/midifile.c \
$(CSOUND_SRC_ROOT)/InOut/midirecv.c \
$(CSOUND_SRC_ROOT)/InOut/midisend.c \
$(CSOUND_SRC_ROOT)/InOut/winascii.c \
$(CSOUND_SRC_ROOT)/InOut/windin.c \
$(CSOUND_SRC_ROOT)/InOut/window.c \
$(CSOUND_SRC_ROOT)/InOut/winEPS.c \
$(CSOUND_SRC_ROOT)/OOps/aops.c \
$(CSOUND_SRC_ROOT)/OOps/bus.c \
$(CSOUND_SRC_ROOT)/OOps/cmath.c \
$(CSOUND_SRC_ROOT)/OOps/diskin.c \
$(CSOUND_SRC_ROOT)/OOps/diskin2.c \
$(CSOUND_SRC_ROOT)/OOps/disprep.c \
$(CSOUND_SRC_ROOT)/OOps/dumpf.c \
$(CSOUND_SRC_ROOT)/OOps/fftlib.c \
$(CSOUND_SRC_ROOT)/OOps/goto_ops.c \
$(CSOUND_SRC_ROOT)/OOps/midiinterop.c \
$(CSOUND_SRC_ROOT)/OOps/midiops.c \
$(CSOUND_SRC_ROOT)/OOps/midiout.c \
$(CSOUND_SRC_ROOT)/OOps/mxfft.c \
$(CSOUND_SRC_ROOT)/OOps/oscils.c \
$(CSOUND_SRC_ROOT)/OOps/pstream.c \
$(CSOUND_SRC_ROOT)/OOps/pvfileio.c \
$(CSOUND_SRC_ROOT)/OOps/pvsanal.c \
$(CSOUND_SRC_ROOT)/OOps/random.c \
$(CSOUND_SRC_ROOT)/OOps/remote.c \
$(CSOUND_SRC_ROOT)/OOps/schedule.c \
$(CSOUND_SRC_ROOT)/OOps/sndinfUG.c \
$(CSOUND_SRC_ROOT)/OOps/str_ops.c \
$(CSOUND_SRC_ROOT)/OOps/ugens1.c \
$(CSOUND_SRC_ROOT)/OOps/ugens2.c \
$(CSOUND_SRC_ROOT)/OOps/ugens2a.c \
$(CSOUND_SRC_ROOT)/OOps/ugens3.c \
$(CSOUND_SRC_ROOT)/OOps/ugens4.c \
$(CSOUND_SRC_ROOT)/OOps/ugens5.c \
$(CSOUND_SRC_ROOT)/OOps/ugens6.c \
$(CSOUND_SRC_ROOT)/OOps/ugrw1.c \
$(CSOUND_SRC_ROOT)/OOps/ugrw2.c \
$(CSOUND_SRC_ROOT)/OOps/vdelay.c \
$(CSOUND_SRC_ROOT)/Opcodes/babo.c \
$(CSOUND_SRC_ROOT)/Opcodes/bilbar.c \
$(CSOUND_SRC_ROOT)/Opcodes/compress.c \
$(CSOUND_SRC_ROOT)/Opcodes/eqfil.c \
$(CSOUND_SRC_ROOT)/Opcodes/Vosim.c \
$(CSOUND_SRC_ROOT)/Opcodes/pitch.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pitch0.c   \
$(CSOUND_SRC_ROOT)/Opcodes/spectra.c  \
$(CSOUND_SRC_ROOT)/Opcodes/ambicode1.c \
$(CSOUND_SRC_ROOT)/Opcodes/sfont.c  \
$(CSOUND_SRC_ROOT)/Opcodes/grain4.c  \
$(CSOUND_SRC_ROOT)/Opcodes/hrtferX.c  \
$(CSOUND_SRC_ROOT)/Opcodes/loscilx.c \
$(CSOUND_SRC_ROOT)/Opcodes/minmax.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pan2.c  \
$(CSOUND_SRC_ROOT)/Opcodes/tabvars.c  \
$(CSOUND_SRC_ROOT)/Opcodes/phisem.c \
$(CSOUND_SRC_ROOT)/Opcodes/hrtfopcodes.c  \
$(CSOUND_SRC_ROOT)/Opcodes/stackops.c  \
$(CSOUND_SRC_ROOT)/Opcodes/vbap.c  \
$(CSOUND_SRC_ROOT)/Opcodes/vbap_eight.c  \
$(CSOUND_SRC_ROOT)/Opcodes/vbap_four.c  \
$(CSOUND_SRC_ROOT)/Opcodes/vbap_sixteen.c \
$(CSOUND_SRC_ROOT)/Opcodes/vbap_zak.c   \
$(CSOUND_SRC_ROOT)/Opcodes/vaops.c  \
$(CSOUND_SRC_ROOT)/Opcodes/ugakbari.c  \
$(CSOUND_SRC_ROOT)/Opcodes/harmon.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pitchtrack.c  \
$(CSOUND_SRC_ROOT)/Opcodes/partikkel.c  \
$(CSOUND_SRC_ROOT)/Opcodes/shape.c  \
$(CSOUND_SRC_ROOT)/Opcodes/tabsum.c \
$(CSOUND_SRC_ROOT)/Opcodes/crossfm.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pvlock.c  \
$(CSOUND_SRC_ROOT)/Opcodes/fareyseq.c  \
$(CSOUND_SRC_ROOT)/Opcodes/modmatrix.c  \
$(CSOUND_SRC_ROOT)/Opcodes/scoreline.c  \
$(CSOUND_SRC_ROOT)/Opcodes/modal4.c \
$(CSOUND_SRC_ROOT)/Opcodes/physutil.c  \
$(CSOUND_SRC_ROOT)/Opcodes/physmod.c  \
$(CSOUND_SRC_ROOT)/Opcodes/mandolin.c  \
$(CSOUND_SRC_ROOT)/Opcodes/singwave.c \
$(CSOUND_SRC_ROOT)/Opcodes/fm4op.c  \
$(CSOUND_SRC_ROOT)/Opcodes/moog1.c  \
$(CSOUND_SRC_ROOT)/Opcodes/shaker.c  \
$(CSOUND_SRC_ROOT)/Opcodes/bowedbar.c \
$(CSOUND_SRC_ROOT)/Opcodes/gab/tabmorph.c \
$(CSOUND_SRC_ROOT)/Opcodes/gab/hvs.c \
$(CSOUND_SRC_ROOT)/Opcodes/gab/sliderTable.c \
$(CSOUND_SRC_ROOT)/Opcodes/gab/newgabopc.c \
$(CSOUND_SRC_ROOT)/Opcodes/ftest.c \
$(CSOUND_SRC_ROOT)/Top/argdecode.c \
$(CSOUND_SRC_ROOT)/Opcodes/hrtfearly.c \
$(CSOUND_SRC_ROOT)/Opcodes/hrtfreverb.c \
$(CSOUND_SRC_ROOT)/Opcodes/cpumeter.c \
$(CSOUND_SRC_ROOT)/Opcodes/gendy.c \
$(CSOUND_SRC_ROOT)/Opcodes/tl/sc_noise.c \
$(CSOUND_SRC_ROOT)/Top/cscore_internal.c \
$(CSOUND_SRC_ROOT)/Top/cscorfns.c \
$(CSOUND_SRC_ROOT)/Top/csmodule.c \
$(CSOUND_SRC_ROOT)/Top/csound.c \
$(CSOUND_SRC_ROOT)/Top/getstring.c \
$(CSOUND_SRC_ROOT)/Top/main.c \
$(CSOUND_SRC_ROOT)/Top/new_opts.c \
$(CSOUND_SRC_ROOT)/Top/one_file.c \
$(CSOUND_SRC_ROOT)/Top/opcode.c \
$(CSOUND_SRC_ROOT)/Top/threads.c \
$(CSOUND_SRC_ROOT)/Top/utility.c \
$(CSOUND_SRC_ROOT)/Opcodes/ambicode.c       \
$(CSOUND_SRC_ROOT)/Opcodes/bbcut.c          \
$(CSOUND_SRC_ROOT)/Opcodes/biquad.c \
$(CSOUND_SRC_ROOT)/Opcodes/butter.c         \
$(CSOUND_SRC_ROOT)/Opcodes/clfilt.c         \
$(CSOUND_SRC_ROOT)/Opcodes/cross2.c \
$(CSOUND_SRC_ROOT)/Opcodes/dam.c            \
$(CSOUND_SRC_ROOT)/Opcodes/dcblockr.c       \
$(CSOUND_SRC_ROOT)/Opcodes/filter.c \
$(CSOUND_SRC_ROOT)/Opcodes/flanger.c        \
$(CSOUND_SRC_ROOT)/Opcodes/follow.c         \
$(CSOUND_SRC_ROOT)/Opcodes/fout.c \
$(CSOUND_SRC_ROOT)/Opcodes/freeverb.c       \
$(CSOUND_SRC_ROOT)/Opcodes/ftconv.c         \
$(CSOUND_SRC_ROOT)/Opcodes/ftgen.c \
$(CSOUND_SRC_ROOT)/Opcodes/gab/gab.c        \
$(CSOUND_SRC_ROOT)/Opcodes/gab/vectorial.c  \
$(CSOUND_SRC_ROOT)/Opcodes/grain.c \
$(CSOUND_SRC_ROOT)/Opcodes/locsig.c         \
$(CSOUND_SRC_ROOT)/Opcodes/lowpassr.c       \
$(CSOUND_SRC_ROOT)/Opcodes/metro.c \
$(CSOUND_SRC_ROOT)/Opcodes/midiops2.c       \
$(CSOUND_SRC_ROOT)/Opcodes/midiops3.c       \
$(CSOUND_SRC_ROOT)/Opcodes/newfils.c \
$(CSOUND_SRC_ROOT)/Opcodes/nlfilt.c         \
$(CSOUND_SRC_ROOT)/Opcodes/oscbnk.c         \
$(CSOUND_SRC_ROOT)/Opcodes/pluck.c \
$(CSOUND_SRC_ROOT)/Opcodes/repluck.c        \
$(CSOUND_SRC_ROOT)/Opcodes/reverbsc.c       \
$(CSOUND_SRC_ROOT)/Opcodes/seqtime.c \
$(CSOUND_SRC_ROOT)/Opcodes/sndloop.c        \
$(CSOUND_SRC_ROOT)/Opcodes/sndwarp.c        \
$(CSOUND_SRC_ROOT)/Opcodes/space.c \
$(CSOUND_SRC_ROOT)/Opcodes/spat3d.c         \
$(CSOUND_SRC_ROOT)/Opcodes/syncgrain.c      \
$(CSOUND_SRC_ROOT)/Opcodes/ugens7.c \
$(CSOUND_SRC_ROOT)/Opcodes/ugens9.c         \
$(CSOUND_SRC_ROOT)/Opcodes/ugensa.c         \
$(CSOUND_SRC_ROOT)/Opcodes/uggab.c \
$(CSOUND_SRC_ROOT)/Opcodes/ugmoss.c         \
$(CSOUND_SRC_ROOT)/Opcodes/ugnorman.c       \
$(CSOUND_SRC_ROOT)/Opcodes/ugsc.c \
$(CSOUND_SRC_ROOT)/Opcodes/wave-terrain.c   \
$(CSOUND_SRC_ROOT)/Opcodes/stdopcod.c \
$(CSOUND_SRC_ROOT)/Opcodes/ifd.c  \
$(CSOUND_SRC_ROOT)/Opcodes/partials.c  \
$(CSOUND_SRC_ROOT)/Opcodes/psynth.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pvsbasic.c \
$(CSOUND_SRC_ROOT)/Opcodes/pvscent.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pvsdemix.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pvs_ops.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pvsband.c \
$(CSOUND_SRC_ROOT)/Opcodes/pvsbuffer.c \
$(CSOUND_SRC_ROOT)/Opcodes/dsputil.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pvadd.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pvinterp.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pvocext.c \
$(CSOUND_SRC_ROOT)/Opcodes/pvread.c  \
$(CSOUND_SRC_ROOT)/Opcodes/ugens8.c  \
$(CSOUND_SRC_ROOT)/Opcodes/vpvoc.c  \
$(CSOUND_SRC_ROOT)/Opcodes/pvoc.c \
$(CSOUND_SRC_ROOT)/Engine/csound_orc_semantics.c \
$(CSOUND_SRC_ROOT)/Engine/csound_orc_expressions.c \
$(CSOUND_SRC_ROOT)/Engine/csound_orc_optimize.c \
$(CSOUND_SRC_ROOT)/Engine/csound_orc_compile.c \
$(CSOUND_SRC_ROOT)/Engine/new_orc_parser.c \
$(CSOUND_SRC_ROOT)/Engine/symbtab.c \
$(CSOUND_SRC_ROOT)/Opcodes/mp3in.c \
$(CSOUND_SRC_ROOT)/InOut/libmpadec/layer1.c \
$(CSOUND_SRC_ROOT)/InOut/libmpadec/layer2.c \
$(CSOUND_SRC_ROOT)/InOut/libmpadec/layer3.c \
$(CSOUND_SRC_ROOT)/InOut/libmpadec/synth.c \
$(CSOUND_SRC_ROOT)/InOut/libmpadec/tables.c \
$(CSOUND_SRC_ROOT)/InOut/libmpadec/mpadec.c \
$(CSOUND_SRC_ROOT)/InOut/libmpadec/mp3dec.c \
csound_orclex.c \
csound_prelex.c \
csound_orcparse.c \
rtopensl.c \
AndroidCsound.cpp \
$(CSOUND_SRC_ROOT)/interfaces/CppSound.cpp \
$(CSOUND_SRC_ROOT)/interfaces/CsoundFile.cpp \
$(CSOUND_SRC_ROOT)/interfaces/Soundfile.cpp \
$(CSOUND_SRC_ROOT)/interfaces/csPerfThread.cpp \
$(CSOUND_SRC_ROOT)/interfaces/cs_glue.cpp \
$(CSOUND_SRC_ROOT)/interfaces/filebuilding.cpp \
java_interfaceJAVA_wrap.cpp
#CsoundObj.cpp

LOCAL_LDLIBS := -llog -lOpenSLES

LOCAL_STATIC_LIBRARIES := sndfile


include $(BUILD_SHARED_LIBRARY)

$(call import-module,libsndfile-android/jni)