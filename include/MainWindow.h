#ifndef MAIN_WINDOW_H
#define MAIN_WINDOW_H

#include <QWidget>
#include <memory>
#include <pthread.h>

class QLabel;
class QPushButton;
class QLineEdit;
class QSpinBox;
class QVBoxLayout;
class QHBoxLayout;

namespace YQ {

using std::unique_ptr;
using std::shared_ptr;
using std::make_unique;
using std::make_shared;

class Image;

class MainWindow : public QWidget {
	Q_OBJECT
public:
	MainWindow();
	~MainWindow();
private:
	shared_ptr<Image> m_image;

    bool m_Signal_terminate_draw;
    void keyPressEvent(QKeyEvent *e)override;

    pthread_mutex_t m_Mutex_update_pos;
	bool m_Signal_terminate_update_pos;
    bool m_Signal_terminate_check_hotkey;
	pthread_t m_Thread_update_pos;
    pthread_t m_Thread_check_hotkey;

	static void *update_pos (void *instance);
    static void *check_hotkey(void *instance);
private:
	QLabel *m_Label_image_wrapper;
	QPushButton *m_Button_start;
	QPushButton *m_Button_choose_image;
	
	QLineEdit *m_LineEdit_img_size;
	QLineEdit *m_LineEdit_current_x;
	QLineEdit *m_LineEdit_current_y;
	QLineEdit *m_LineEdit_draw_center_x;
	QLineEdit *m_LineEdit_draw_center_y;
	QLineEdit *m_LineEdit_draw_radius;
	QLineEdit *m_LineEdit_rgb_begin;
	QLineEdit *m_LineEdit_rgb_end;
	QLineEdit *m_LineEdit_click_delay;//毫秒数
    QLineEdit *m_LineEdit_down_up_delay;
    QLineEdit *m_LineEdit_row_dilute_ratio;//无损绘制的稀散程度，拉伸率
    QLineEdit *m_LineEdit_column_dilute_ratio;
    QSpinBox *m_SpinBox_row_pixel_step;//有损绘制的步长，像素数为单位
    QSpinBox *m_SpinBox_column_pixel_step;
    bool all_args_filled();
private slots:
	void connect_all_slots();
	void on_Button_start_clicked();
	void on_Button_choose_image_clicked();
	
	void on_MainWindow_request_to_update_cursor_pos (int x, int y);//更新控件
signals:
	void request_to_update_cursor_pos (int x, int y);//子线程请求主线程更新控件的信号
};

}

#endif // MAIN_WINDOW_H