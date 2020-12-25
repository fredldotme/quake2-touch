# GNU Make project makefile autogenerated by Premake
ifndef config
  config=release
endif

ifndef use_fbo
  use_fbo=no
endif

ifndef verbose
  SILENT = @
endif

CC = gcc
CXX = g++
AR = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

# define SailfishOS platform first
DEFINES += -DSAILFISHOS

ifeq ($(use_fbo),yes)
  DEFINES += -DSAILFISH_FBO
endif

ifeq ($(config),release)
  OBJDIR     = ../../../Output/Targets/SailfishOS-32/Release/obj/quake2-gles2
  TARGETDIR  = ../../../Output/Targets/SailfishOS-32/Release/bin
  TARGET     = $(TARGETDIR)/quake2-gles2
  DEFINES   += -DARCH=\"i386\" -DOSTYPE=\"Linux\" -DNOUNCRYPT -DZIP -D_GNU_SOURCE=1 -DEGLW_GLES2
  INCLUDES  += -I../../../../../Engine/External/include -I../../../Sources -I../../../../../Engine/Sources/Compatibility -I../../../../../Engine/Sources/Compatibility/OpenGLES/Includes
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -ffast-math -Wall -Wextra -O2 -std=c99 -Wno-unused-function -Wno-unused-parameter -Wno-unused-but-set-variable -Wno-switch -Wno-missing-field-initializers -fPIC -fvisibility=hidden
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../Output/Targets/SailfishOS-32/Release/lib -L. -s
  LDDEPS    += ../../../Output/Targets/SailfishOS-32/Release/lib/libZLib.a
  LDDEPS    += ../../../../../SDL2/build/.libs/libSDL2.a
  LIBS      += $(LDDEPS) -lm -ldl -lGLESv2 -lEGL -lpthread
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR     = ../../../Output/Targets/SailfishOS-32/Debug/obj/quake2-gles2
  TARGETDIR  = ../../../Output/Targets/SailfishOS-32/Debug/bin
  TARGET     = $(TARGETDIR)/quake2-gles2
  DEFINES   += -DARCH=\"i386\" -DOSTYPE=\"Linux\" -DNOUNCRYPT -DZIP -D_GNU_SOURCE=1 -DEGLW_GLES2  
  # DEFINES    += -DSDL_VIDEO_DRIVER_WAYLAND_QT_TOUCH
  INCLUDES  += -I../../../../../SDL2/include -I../../../../../Engine/External/include -I../../../Sources -I../../../../../Engine/Sources/Compatibility -I../../../../../Engine/Sources/Compatibility/OpenGLES/Includes
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -ffast-math -Wall -Wextra -g -std=c99 -Wno-unused-function -Wno-unused-parameter -Wno-unused-but-set-variable -Wno-switch -Wno-missing-field-initializers -fPIC -fvisibility=hidden
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -L../../../Output/Targets/SailfishOS-32/Debug/lib -L. -L../../../../../SDL2-src/SDL2/build/.libs
  LDDEPS    += ../../../Output/Targets/SailfishOS-32/Debug/lib/libZLib.a
  LDDEPS    += ../../../../../SDL2/build/.libs/libSDL2.a
  LIBS      += $(LDDEPS) -lm -ldl -lGLESv2 -lEGL -lpthread
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/memory_linux.o \
	$(OBJDIR)/network_linux.o \
	$(OBJDIR)/system_linux.o \
	$(OBJDIR)/qal.o \
	$(OBJDIR)/audio_sdl.o \
	$(OBJDIR)/input_sdl.o \
	$(OBJDIR)/system_sdl.o \
	$(OBJDIR)/cl_cin.o \
	$(OBJDIR)/cl_console.o \
	$(OBJDIR)/cl_download.o \
	$(OBJDIR)/cl_effects.o \
	$(OBJDIR)/cl_entities.o \
	$(OBJDIR)/cl_input.o \
	$(OBJDIR)/cl_inventory.o \
	$(OBJDIR)/cl_keyboard.o \
	$(OBJDIR)/cl_lights.o \
	$(OBJDIR)/cl_main.o \
	$(OBJDIR)/cl_network.o \
	$(OBJDIR)/cl_parse.o \
	$(OBJDIR)/cl_particles.o \
	$(OBJDIR)/cl_prediction.o \
	$(OBJDIR)/cl_screen.o \
	$(OBJDIR)/cl_tempentities.o \
	$(OBJDIR)/cl_view.o \
	$(OBJDIR)/menu.o \
	$(OBJDIR)/menu_address_book.o \
	$(OBJDIR)/menu_credits.o \
	$(OBJDIR)/menu_deathmatch.o \
	$(OBJDIR)/menu_download.o \
	$(OBJDIR)/menu_game.o \
	$(OBJDIR)/menu_graphics.o \
	$(OBJDIR)/menu_join_server.o \
	$(OBJDIR)/menu_keys.o \
	$(OBJDIR)/menu_load_save_game.o \
	$(OBJDIR)/menu_main.o \
	$(OBJDIR)/menu_mouse.o \
	$(OBJDIR)/menu_multiplayer.o \
	$(OBJDIR)/menu_options.o \
	$(OBJDIR)/menu_player_config.o \
	$(OBJDIR)/menu_quit.o \
	$(OBJDIR)/menu_sound.o \
	$(OBJDIR)/menu_start_server.o \
	$(OBJDIR)/menu_stick.o \
	$(OBJDIR)/menu_video.o \
	$(OBJDIR)/qmenu.o \
	$(OBJDIR)/r_draw.o \
	$(OBJDIR)/r_image.o \
	$(OBJDIR)/r_main.o \
	$(OBJDIR)/r_mesh.o \
	$(OBJDIR)/r_model.o \
	$(OBJDIR)/md2.o \
	$(OBJDIR)/pcx.o \
	$(OBJDIR)/sp2.o \
	$(OBJDIR)/stb.o \
	$(OBJDIR)/wal.o \
	$(OBJDIR)/ogg.o \
	$(OBJDIR)/openal.o \
	$(OBJDIR)/sound.o \
	$(OBJDIR)/wave.o \
	$(OBJDIR)/argproc.o \
	$(OBJDIR)/clientserver.o \
	$(OBJDIR)/cmdparser.o \
	$(OBJDIR)/collision.o \
	$(OBJDIR)/crc.o \
	$(OBJDIR)/cvar.o \
	$(OBJDIR)/filesystem.o \
	$(OBJDIR)/glob.o \
	$(OBJDIR)/md4.o \
	$(OBJDIR)/misc.o \
	$(OBJDIR)/movemsg.o \
	$(OBJDIR)/netchan.o \
	$(OBJDIR)/pmove.o \
	$(OBJDIR)/szone.o \
	$(OBJDIR)/zone.o \
	$(OBJDIR)/flash.o \
	$(OBJDIR)/rand.o \
	$(OBJDIR)/shared.o \
	$(OBJDIR)/ioapi.o \
	$(OBJDIR)/unzip.o \
	$(OBJDIR)/sv_cmd.o \
	$(OBJDIR)/sv_conless.o \
	$(OBJDIR)/sv_entities.o \
	$(OBJDIR)/sv_game.o \
	$(OBJDIR)/sv_init.o \
	$(OBJDIR)/sv_main.o \
	$(OBJDIR)/sv_save.o \
	$(OBJDIR)/sv_send.o \
	$(OBJDIR)/sv_user.o \
	$(OBJDIR)/sv_world.o \
	$(OBJDIR)/EGLWrapper.o \
	$(OBJDIR)/OpenGLWrapper.o \
	$(OBJDIR)/SDLWrapper.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking quake2-gles2
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning quake2-gles2
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -MMD -MP $(DEFINES) $(INCLUDES) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/memory_linux.o: ../../../Sources/backends/unix/memory_linux.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/network_linux.o: ../../../Sources/backends/unix/network_linux.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/system_linux.o: ../../../Sources/backends/unix/system_linux.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/qal.o: ../../../Sources/backends/qal.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/audio_sdl.o: ../../../Sources/backends/sdl/audio_sdl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/input_sdl.o: ../../../Sources/backends/sdl/input_sdl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/system_sdl.o: ../../../Sources/backends/sdl/system_sdl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_cin.o: ../../../Sources/client/cl_cin.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_console.o: ../../../Sources/client/cl_console.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_download.o: ../../../Sources/client/cl_download.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_effects.o: ../../../Sources/client/cl_effects.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_entities.o: ../../../Sources/client/cl_entities.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_input.o: ../../../Sources/client/cl_input.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_inventory.o: ../../../Sources/client/cl_inventory.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_keyboard.o: ../../../Sources/client/cl_keyboard.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_lights.o: ../../../Sources/client/cl_lights.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_main.o: ../../../Sources/client/cl_main.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_network.o: ../../../Sources/client/cl_network.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_parse.o: ../../../Sources/client/cl_parse.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_particles.o: ../../../Sources/client/cl_particles.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_prediction.o: ../../../Sources/client/cl_prediction.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_screen.o: ../../../Sources/client/cl_screen.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_tempentities.o: ../../../Sources/client/cl_tempentities.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cl_view.o: ../../../Sources/client/cl_view.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu.o: ../../../Sources/client/menu/menu.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_address_book.o: ../../../Sources/client/menu/menu_address_book.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_credits.o: ../../../Sources/client/menu/menu_credits.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_deathmatch.o: ../../../Sources/client/menu/menu_deathmatch.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_download.o: ../../../Sources/client/menu/menu_download.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_game.o: ../../../Sources/client/menu/menu_game.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_graphics.o: ../../../Sources/client/menu/menu_graphics.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_join_server.o: ../../../Sources/client/menu/menu_join_server.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_keys.o: ../../../Sources/client/menu/menu_keys.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_load_save_game.o: ../../../Sources/client/menu/menu_load_save_game.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_main.o: ../../../Sources/client/menu/menu_main.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_mouse.o: ../../../Sources/client/menu/menu_mouse.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_multiplayer.o: ../../../Sources/client/menu/menu_multiplayer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_options.o: ../../../Sources/client/menu/menu_options.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_player_config.o: ../../../Sources/client/menu/menu_player_config.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_quit.o: ../../../Sources/client/menu/menu_quit.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_sound.o: ../../../Sources/client/menu/menu_sound.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_start_server.o: ../../../Sources/client/menu/menu_start_server.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_stick.o: ../../../Sources/client/menu/menu_stick.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/menu_video.o: ../../../Sources/client/menu/menu_video.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/qmenu.o: ../../../Sources/client/menu/qmenu.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/r_draw.o: ../../../Sources/client/refresh/r_draw.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/r_image.o: ../../../Sources/client/refresh/r_image.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/r_main.o: ../../../Sources/client/refresh/r_main.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/r_mesh.o: ../../../Sources/client/refresh/r_mesh.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/r_model.o: ../../../Sources/client/refresh/r_model.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/md2.o: ../../../Sources/client/refresh/files/md2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/pcx.o: ../../../Sources/client/refresh/files/pcx.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sp2.o: ../../../Sources/client/refresh/files/sp2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/stb.o: ../../../Sources/client/refresh/files/stb.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/wal.o: ../../../Sources/client/refresh/files/wal.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/ogg.o: ../../../Sources/client/sound/ogg.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/openal.o: ../../../Sources/client/sound/openal.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sound.o: ../../../Sources/client/sound/sound.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/wave.o: ../../../Sources/client/sound/wave.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/argproc.o: ../../../Sources/common/argproc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/clientserver.o: ../../../Sources/common/clientserver.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cmdparser.o: ../../../Sources/common/cmdparser.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/collision.o: ../../../Sources/common/collision.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/crc.o: ../../../Sources/common/crc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/cvar.o: ../../../Sources/common/cvar.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/filesystem.o: ../../../Sources/common/filesystem.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/glob.o: ../../../Sources/common/glob.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/md4.o: ../../../Sources/common/md4.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/misc.o: ../../../Sources/common/misc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/movemsg.o: ../../../Sources/common/movemsg.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/netchan.o: ../../../Sources/common/netchan.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/pmove.o: ../../../Sources/common/pmove.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/szone.o: ../../../Sources/common/szone.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/zone.o: ../../../Sources/common/zone.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/flash.o: ../../../Sources/common/shared/flash.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/rand.o: ../../../Sources/common/shared/rand.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/shared.o: ../../../Sources/common/shared/shared.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/ioapi.o: ../../../Sources/common/unzip/ioapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/unzip.o: ../../../Sources/common/unzip/unzip.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sv_cmd.o: ../../../Sources/server/sv_cmd.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sv_conless.o: ../../../Sources/server/sv_conless.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sv_entities.o: ../../../Sources/server/sv_entities.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sv_game.o: ../../../Sources/server/sv_game.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sv_init.o: ../../../Sources/server/sv_init.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sv_main.o: ../../../Sources/server/sv_main.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sv_save.o: ../../../Sources/server/sv_save.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sv_send.o: ../../../Sources/server/sv_send.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sv_user.o: ../../../Sources/server/sv_user.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/sv_world.o: ../../../Sources/server/sv_world.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/EGLWrapper.o: ../../../../../Engine/Sources/Compatibility/OpenGLES/EGLWrapper.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/OpenGLWrapper.o: ../../../../../Engine/Sources/Compatibility/OpenGLES/OpenGLWrapper.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/SDLWrapper.o: ../../../../../Engine/Sources/Compatibility/SDL/SDLWrapper.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
