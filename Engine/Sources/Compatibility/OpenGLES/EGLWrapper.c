#include "OpenGLES/EGLWrapper.h"
#include "SDL/SDLWrapper.h"

#include <SDL_syswm.h>

#include <stdio.h>
#include <stdlib.h>

EglwContext *eglwContext = NULL;

#if defined(__RASPBERRY_PI__)
static DISPMANX_DISPLAY_HANDLE_T dispman_display;
static DISPMANX_ELEMENT_HANDLE_T dispman_element;
static EGL_DISPMANX_WINDOW_T l_dispmanWindow;
#endif

static EGLNativeWindowType eglwGetNativeWindow()
{
    EGLNativeWindowType nativeWindow = (EGLNativeWindowType)NULL;
    nativeWindow=(EGLNativeWindowType)sdlwContext->window;

    return nativeWindow;
}

bool eglwInitialize(EglwConfigInfo *minimalCfgi, EglwConfigInfo *requestedCfgi, bool maxQualityFlag) {
	SDL_GLContext context;

	EglwContext *eglw = malloc(sizeof(EglwContext));
	if (eglw == NULL) return true;
	eglwContext = eglw;
	eglw->sdlContext = SDL_GL_CreateContext(eglwGetNativeWindow());

    return false;
on_error:
	printf("EGL error: %04x\n", eglGetError());
    return true;
}

void eglwSwapBuffers() {
	EglwContext *eglw = eglwContext;
	SDL_GL_SwapWindow(eglwGetNativeWindow());
}
