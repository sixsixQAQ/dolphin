#include "Mouse.h"

#include "api.h"
#include <unistd.h>

#include <Windows.h>
namespace YQ {

Mouse::Mouse()
{
	init_API();
}

Mouse::~Mouse()
{
	destroy_API();
}

Mouse &Mouse::get_instance()
{
	static Mouse mouse;
	return mouse;
}

QPoint Mouse::get_pos() const
{
    int x,y;
    API_get_mouse_pos(&x, &y);
	return QPoint(x,y);
}

void Mouse::move_to (const QPoint &pos)
{
	//  QCursor::setPos (pos);//使用QCursor::setPos()会导致bug，直径用底层API
	API_set_mouse (pos.x(), pos.y());
}

void Mouse::click (int down_up_delay)
{
	API_mouse_down();
    usleep(1000 * down_up_delay);
    API_mouse_up();
}

}