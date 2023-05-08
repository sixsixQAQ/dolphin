#include "MainWindow.h"

#include "Image.h"
#include "Mouse.h"

#include <QLayout>
#include <QPushButton>
#include <QLineEdit>
#include <QLabel>
#include <QIntValidator>
#include <QFileDialog>
#include <QMessageBox>
#include <stdexcept>
#include <stdio.h>
#include <unistd.h>
#include <QKeyEvent>
#include <QSpinBox>


#define STR(arg) #arg

namespace YQ {

using std::runtime_error;

MainWindow::MainWindow()
{
	auto *Label_show = new QLabel (this);
	auto *Label_current_img_size = new QLabel (this);
	auto *Label_input_center = new QLabel (this);
	auto *Label_input_radius = new QLabel (this);
	auto *Label_input_rgb_interval = new QLabel (this);
	auto *Label_input_click_delay = new QLabel (this);
    auto *Label_input_down_up_delay = new QLabel(this);
    auto *Label_input_pixel_degree = new QLabel(this);
    auto *Label_input_dilute_ratio = new QLabel(this);
	auto *VBox_top = new QVBoxLayout();
	auto *Grid_labels_and_blanks = new QGridLayout();
	auto *HBox_buttons = new QHBoxLayout();
	{/* member new */
		m_Label_image_wrapper = new QLabel (this);

		m_Button_start = new QPushButton (this);
		m_Button_choose_image = new QPushButton (this);

		m_LineEdit_img_size = new QLineEdit (this);
		m_LineEdit_rgb_begin = new QLineEdit (this);
		m_LineEdit_rgb_end = new QLineEdit (this);
		m_LineEdit_current_x = new QLineEdit (this);
		m_LineEdit_current_y = new QLineEdit (this);
		m_LineEdit_draw_center_x = new QLineEdit (this);
		m_LineEdit_draw_center_y = new QLineEdit (this);
		m_LineEdit_draw_radius = new QLineEdit (this);
		m_LineEdit_click_delay = new QLineEdit (this);
        m_LineEdit_down_up_delay = new QLineEdit(this);
        m_LineEdit_row_dilute_ratio = new QLineEdit(this);
        m_LineEdit_column_dilute_ratio = new QLineEdit(this);
        m_SpinBox_row_pixel_step= new QSpinBox(this);
        m_SpinBox_column_pixel_step =new QSpinBox(this);

	}
	{/* layout */
		this->setLayout (VBox_top);
		VBox_top->addWidget (m_Label_image_wrapper, 0, Qt::AlignCenter);
		VBox_top->addLayout (Grid_labels_and_blanks);

		Grid_labels_and_blanks->addWidget (Label_show, 0, 0);
		Grid_labels_and_blanks->addWidget (m_LineEdit_current_x, 0, 1);
		Grid_labels_and_blanks->addWidget (m_LineEdit_current_y, 0, 2);

		Grid_labels_and_blanks->addWidget (Label_current_img_size, 1, 0);
		Grid_labels_and_blanks->addWidget (m_LineEdit_img_size, 1, 1, 1, 2);


		Grid_labels_and_blanks->addWidget (Label_input_center, 2, 0);
		Grid_labels_and_blanks->addWidget (m_LineEdit_draw_center_x, 2, 1);
		Grid_labels_and_blanks->addWidget (m_LineEdit_draw_center_y, 2, 2);

		Grid_labels_and_blanks->addWidget (Label_input_rgb_interval, 3, 0);
		Grid_labels_and_blanks->addWidget (m_LineEdit_rgb_begin, 3, 1);
		Grid_labels_and_blanks->addWidget (m_LineEdit_rgb_end, 3, 2);

		Grid_labels_and_blanks->addWidget (Label_input_radius, 4, 0);
		Grid_labels_and_blanks->addWidget (m_LineEdit_draw_radius, 4, 1, 1, 2);

		Grid_labels_and_blanks->addWidget (Label_input_click_delay, 5, 0);
		Grid_labels_and_blanks->addWidget (m_LineEdit_click_delay, 5, 1, 1, 2);

        Grid_labels_and_blanks->addWidget(Label_input_down_up_delay, 6, 0);
        Grid_labels_and_blanks->addWidget(m_LineEdit_down_up_delay, 6, 1, 1, 2);

        Grid_labels_and_blanks->addWidget(Label_input_dilute_ratio, 7,0);
        Grid_labels_and_blanks->addWidget(m_LineEdit_row_dilute_ratio, 7, 1);
        Grid_labels_and_blanks->addWidget(m_LineEdit_column_dilute_ratio, 7, 2);

        Grid_labels_and_blanks->addWidget(Label_input_pixel_degree,8,0);
        Grid_labels_and_blanks->addWidget(m_SpinBox_row_pixel_step, 8, 1);
        Grid_labels_and_blanks->addWidget(m_SpinBox_column_pixel_step, 8, 2);

		VBox_top->addLayout (HBox_buttons);

		HBox_buttons->addWidget (m_Button_start);
		HBox_buttons->addWidget (m_Button_choose_image);
	}

    {/* objectName */
        m_SpinBox_row_pixel_step->setObjectName(STR(m_SpinBox_row_pixel_step));
        m_SpinBox_column_pixel_step->setObjectName(STR(m_SpinBox_column_pixel_step));
        m_Label_image_wrapper->setObjectName(STR(m_Label_image_wrapper));
    }

	{/* attribute */
		this->setWindowTitle ("dolphin 1.0");
        this->setWindowIcon(QIcon(":LOGO"));

        Grid_labels_and_blanks->setColumnStretch(0,0);
        Grid_labels_and_blanks->setColumnStretch(1,0);
        Grid_labels_and_blanks->setColumnStretch(2,0);

        m_Label_image_wrapper->setFixedSize (240, 240);
		m_Label_image_wrapper->setAlignment (Qt::AlignCenter);
		m_Label_image_wrapper->setText ("绘制时\n只会截取左上角\n直径大小的正方形");
		Label_current_img_size->setText ("当前图片尺寸");
		Label_show->setText ("当前坐标");
		Label_input_center->setText ("绘制中心");
		Label_input_radius->setText ("绘制半径");
		Label_input_rgb_interval->setText ("颜色范围");
		Label_input_click_delay->setText ("点击间隔");
        Label_input_down_up_delay->setText("按下持续时间");
        Label_input_pixel_degree->setText("行/列 取点步长");
        Label_input_dilute_ratio->setText("行/列 稀散系数");

		m_Button_start->setText ("开始绘制（ESC停止）");
		m_Button_choose_image->setText ("选择图片");

		m_LineEdit_rgb_begin->setPlaceholderText ("左区间");
		m_LineEdit_rgb_end->setPlaceholderText ("右区间");
		m_LineEdit_draw_center_x->setPlaceholderText ("x坐标");
		m_LineEdit_draw_center_y->setPlaceholderText ("y坐标");
		m_LineEdit_click_delay->setText ("1");
        m_LineEdit_down_up_delay->setText("0");
        m_LineEdit_row_dilute_ratio->setText("1.00");
        m_LineEdit_column_dilute_ratio->setText("1.00");

		m_LineEdit_img_size->setReadOnly (true); //设置只读
		m_LineEdit_current_x->setReadOnly (true);
		m_LineEdit_current_y->setReadOnly (true);

		auto only_4_int = new QIntValidator (0, 9999, this);
		m_LineEdit_draw_center_x->setValidator (only_4_int); //设置只能输入4位整数
		m_LineEdit_draw_center_y->setValidator (only_4_int);
		m_LineEdit_draw_radius->setValidator (only_4_int);
		m_LineEdit_click_delay->setValidator (only_4_int);
        m_LineEdit_down_up_delay->setValidator(only_4_int);
		auto only_6_hex_color_code = new QRegularExpressionValidator (QRegularExpression ("[0-9A-Fa-f]{6}"), this);
		m_LineEdit_rgb_begin->setValidator (only_6_hex_color_code);//设置只能6位颜色代码
		m_LineEdit_rgb_end->setValidator (only_6_hex_color_code);

        auto only_positive_double = new QDoubleValidator(1,100,2,this);
        only_positive_double->setNotation(QDoubleValidator::StandardNotation);
        m_LineEdit_row_dilute_ratio->setValidator(only_positive_double);
        m_LineEdit_column_dilute_ratio->setValidator(only_positive_double);

        m_SpinBox_row_pixel_step->setRange(1, 100);
        m_SpinBox_row_pixel_step->setSpecialValueText("");
        m_SpinBox_row_pixel_step->setMinimum(1);

        m_SpinBox_column_pixel_step->setRange(1, 100);
        m_SpinBox_column_pixel_step->setSpecialValueText("");
        m_SpinBox_column_pixel_step->setMinimum(1);



	}

    {/* slots */
        connect_all_slots();//槽函数的绑定尽量在子线程创建之前
    }

	{/* main task */
		m_image = nullptr;
        pthread_mutex_init(&m_Mutex_update_pos, NULL);

        m_Signal_terminate_update_pos = false;
        m_Signal_terminate_check_hotkey= false;
		pthread_create (&m_Thread_update_pos, NULL, MainWindow::update_pos, this);
        pthread_create(&m_Thread_check_hotkey, NULL, MainWindow::check_hotkey,this);
	}
}

MainWindow::~MainWindow()
{
    m_Signal_terminate_update_pos = true;
	pthread_join (m_Thread_update_pos, NULL);
    pthread_mutex_destroy(&m_Mutex_update_pos);
}

void MainWindow::on_MainWindow_request_to_update_cursor_pos (int x, int y)
{
	m_LineEdit_current_x->setText (std::to_string (x).c_str());
	m_LineEdit_current_y->setText (std::to_string (y).c_str());
}


/**
 * 子线程，用来更新当前鼠标位置。
 * 一定不要直接操作主线程的控件，会有bug。
 * 用Qt的信号与槽机制，发送信号，请求主线程去更新自己的控件。
 */
void *MainWindow::update_pos (void *instance_)
{
	auto instance = static_cast<MainWindow *> (instance_);
	for (; !instance->m_Signal_terminate_update_pos;) {
        pthread_mutex_lock(&instance->m_Mutex_update_pos);
		auto pos = Mouse::get_instance().get_pos();
		emit instance->request_to_update_cursor_pos (pos.x(), pos.y());
        pthread_mutex_unlock(&instance->m_Mutex_update_pos);
        usleep(10000);
	}
	return NULL;
}

void MainWindow::connect_all_slots()
{
	connect (m_Button_start, SIGNAL (clicked()), this, SLOT (on_Button_start_clicked()));
	connect (m_Button_choose_image, SIGNAL (clicked()), this, SLOT (on_Button_choose_image_clicked()));
	connect (this, &MainWindow::request_to_update_cursor_pos, this,
	         &MainWindow::on_MainWindow_request_to_update_cursor_pos);
}


void MainWindow::on_Button_choose_image_clicked()
{
	QString file = QFileDialog::getOpenFileName (
	                   nullptr, "选择图片", ".",
	                   "Image Files (*.png *.jpg)"
	               );
	if (file.isEmpty()) //没打开文件就不再进一步处理
		return;
	m_image = make_shared<Image> (file.toStdString());
	m_Label_image_wrapper->setPixmap (QPixmap::fromImage (QImage (file)).scaled (m_Label_image_wrapper->size()));

	char width_and_height_text[100];
	snprintf (width_and_height_text, sizeof (width_and_height_text), "width: %d    height: %d",
	          m_image->get_width(), m_image->get_height());
	m_LineEdit_img_size->setText (width_and_height_text);
}

static RGB
hex_color_code_to_RGB (const string &code)
{
	const string r = code.substr (0, 2);
	const string g = code.substr (2, 2);
	const string b = code.substr (4, 2);
	int r_number, g_number, b_number;
	sscanf (r.c_str(), "%x", &r_number);
	sscanf (g.c_str(), "%x", &g_number);
	sscanf (b.c_str(), "%x", &b_number);

	return RGB (r_number, g_number, b_number);
}


static bool
is_between_rgb_interval (const RGB &beg, const RGB &end, const RGB &i)
{
	//闭区间
	if (i.get_red() < beg.get_red() || i.get_red() > end.get_red())
		return false;
	if (i.get_green() < beg.get_green() || i.get_green() > end.get_green())
		return false;
	if (i.get_blue() < beg.get_blue() || i.get_blue() > end.get_blue())
		return false;
	return true;
}

bool MainWindow::all_args_filled()
{
	if (m_LineEdit_draw_center_x->text().isEmpty() ||
	    m_LineEdit_current_y->text().isEmpty() ||
	    m_LineEdit_draw_radius->text().isEmpty() ||
	    m_LineEdit_rgb_begin->text().isEmpty() ||
	    m_LineEdit_rgb_end->text().isEmpty() ||
	    m_LineEdit_click_delay->text().isEmpty() ||
        m_LineEdit_down_up_delay->text().isEmpty()||
	    m_image == nullptr
	   )
		return false;
	return true;
}

void MainWindow::keyPressEvent(QKeyEvent *e)
{
    if(e->key() == Qt::Key_Escape) {
        m_Signal_terminate_draw = true;
        qDebug()<<"Esc is pressed\n";
    }
    else{
        QWidget::keyPressEvent(e);
    }
}

void MainWindow::on_Button_start_clicked()
{
	if (!all_args_filled()) {
		QMessageBox::warning (this, "错误", "参数未填写完整/图片不合格");
		return;
	}

	const int center_x = m_LineEdit_draw_center_x->text().toInt();
	const int center_y = m_LineEdit_draw_center_y->text().toInt();
	const int radius = m_LineEdit_draw_radius->text().toInt();

	const int diameter = 2 * radius;
	const int left = center_x - radius;
	const int top = center_y - radius;

	auto &mouse = Mouse::get_instance();

	const RGB rgb_beg = hex_color_code_to_RGB (m_LineEdit_rgb_begin->text().toStdString());
	const RGB rgb_end = hex_color_code_to_RGB (m_LineEdit_rgb_end->text().toStdString());

	const int microseconds_delay = m_LineEdit_click_delay->text().toInt() * 1000;
    const int row_pixel_degree = m_SpinBox_row_pixel_step->value();
    const int column_pixel_degree = m_SpinBox_column_pixel_step->value();
    const double row_dulite_ratio = m_LineEdit_row_dilute_ratio->text().toDouble();
    const double column_dulite_ratio = m_LineEdit_column_dilute_ratio->text().toDouble();

    pthread_mutex_lock(&m_Mutex_update_pos);
    m_Signal_terminate_draw= false;
	for (int i = 0; i < diameter && !m_Signal_terminate_draw; i+=column_pixel_degree) {
		if (i > m_image->get_width()) //图片宽度不够，提前结束
			break;

		for (int j = 0; j < diameter && !m_Signal_terminate_draw; j+=row_pixel_degree) {

			if (j > m_image->get_height()) //图片高度不够，提前结束
				break;

			if (is_between_rgb_interval (rgb_beg, rgb_end, m_image->pixel_at (i, j))) {
				mouse.move_to (QPoint(left + i*column_dulite_ratio, top + j*row_dulite_ratio));
				mouse.click(m_LineEdit_down_up_delay->text().toInt());
				usleep (microseconds_delay);
			}
		}

	}
    pthread_mutex_unlock(&m_Mutex_update_pos);
    QMessageBox::information(this,"提示","绘制结束/中断");
}

};

#ifdef WIN32
#include <windows.h>
namespace YQ{

void *MainWindow::check_hotkey(void *instance_) {
    auto instance = static_cast<MainWindow*>(instance_);
    if(!RegisterHotKey(NULL,1,0,VK_ESCAPE)) {
        QMessageBox::warning(instance, "错误", "ESC热键注册失败");
        return NULL;
    }
    MSG msg;
    while(GetMessage(&msg,NULL,0,0) &&!instance->m_Signal_terminate_check_hotkey){
        if(msg.message == WM_HOTKEY){
            if(msg.wParam == 1){
                instance->m_Signal_terminate_draw = true;
            }
        }
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }
    UnregisterHotKey(NULL,1);
    return NULL;
}

}
#endif