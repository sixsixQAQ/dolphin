#include <QApplication>
#include <QResource>
#include <QFile>
#include <QMessageBox>
#include "MainWindow.h"

using namespace YQ;


int main (int argc, char *argv[])
{
	QApplication app (argc, argv);

    {
        QFile file("style.qss");
        file.open(QFile::ReadOnly);
        if(!file.isOpen())
            QMessageBox::warning(nullptr,"error","样式表打开失败");
        auto style_sheet = QString::fromLatin1(file.readAll());
        app.setStyleSheet(style_sheet);
    }

	MainWindow w;
	w.show();

	return app.exec();
}

