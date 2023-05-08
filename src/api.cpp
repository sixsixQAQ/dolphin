#include "api.h"

#ifdef WIN32
#include <windows.h>


static INPUT G_mouse_down;
static INPUT G_mouse_up;

void init_API()
{
    G_mouse_down.type = INPUT_MOUSE;
    G_mouse_down.mi.dwFlags = MOUSEEVENTF_LEFTDOWN;

    G_mouse_up.type = INPUT_MOUSE;
    G_mouse_up.mi.dwFlags = MOUSEEVENTF_LEFTUP;
}

void destroy_API()
{ }

void API_set_mouse (int x, int y)
{
    SetCursorPos(x,y);
}

void API_mouse_down()
{
    SendInput(1, &G_mouse_down, sizeof(INPUT));
}
void API_mouse_up()
{
    SendInput(1, &G_mouse_up, sizeof(INPUT));
}

void API_get_mouse_pos(int *x, int*y)
{
    POINT screenPos;
    GetCursorPos(&screenPos);
    *x = screenPos.x, *y = screenPos.y;
}

#elif __linux__

#include <X11/extensions/XTest.h>
#include <X11/Xlib.h>
#include <stdlib.h>
#include <stdio.h>

Display *G_display;
void init_API()
{
	if (G_display == NULL)
		G_display = XOpenDisplay (NULL);
	if (G_display == NULL) {
		fprintf (stderr, "XOpenDisplay() failed\n");
		exit (EXIT_FAILURE);
	}
}

void API_set_mouse (int x, int y)
{
	XTestFakeMotionEvent (G_display, -1, x, y, 0);
	XFlush (G_display);
}

void API_mouse_click ()
{
	XTestFakeButtonEvent (G_display, Button1, true, 0);
	XTestFakeButtonEvent (G_display, Button1, false, 0);
	XFlush (G_display);
}

void destroy_API()
{
	if (G_display != NULL)
		XCloseDisplay (G_display);
}




#endif