#ifndef MOUSE_H
#define MOUSE_H

#include <QWidget>

namespace YQ {

class Mouse final {
public:
	static Mouse &get_instance();
	//获取鼠标位置
	QPoint get_pos() const;
	//移动鼠标
	void move_to (const QPoint &pos);
	//单击鼠标左键
	void click (int down_up_delay=0);
private:
	Mouse();
	~Mouse();
	Mouse (const Mouse &) = delete;
	Mouse &operator= (const Mouse &) = delete;
};

}
#endif // MOUSE_H