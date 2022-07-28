#ifndef EGLWrapper_h
#define EGLWrapper_h

#if defined(__RASPBERRY_PI__)
//#include "bcm_host.h"
#endif

#include <EGL/egl.h>
#if defined(EGLW_SDL_DISPLAY)
#include <EGL/eglThenesis.h>
#endif

#include <stdbool.h>

#include <SDL2/SDL.h>
#include <SDL2/SDL_opengles2.h>
#include <SDL2/SDL_opengles2_gl2ext.h>

typedef struct {
    EGLint redSize, greenSize, blueSize, alphaSize, depthSize, stencilSize, samples;
} EglwConfigInfo;

void eglwClearConfigInfo(EglwConfigInfo *ci);

typedef struct {
    SDL_GLContext sdlContext;
} EglwContext;

extern EglwContext *eglwContext;

/// If \a minimalCfgi is not NULL, there must be a config that has at least these minimum features.
/// If \a requestedCfgi is not NULL, try to find a config that match at least this one.
/// If \a requestedCfgi is NULL, the config with the best quality is used if \a maxQualityFlag is true, otherwise the minimum quality is used.
bool eglwInitialize(EglwConfigInfo *minimalCfgi, EglwConfigInfo *requestedCfgi, bool maxQualityFlag);
void eglwSwapBuffers();

#endif
