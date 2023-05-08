#ifndef IMAGE_H
#define IMAGE_H

#include <cstdint>
#include <string>
#include <stdexcept>
#include <QImage>

namespace YQ {

using std::string;
using std::runtime_error;

class RGB {
public:
	RGB (uint8_t r, uint8_t g, uint8_t b);
	uint8_t get_red() const;
	uint8_t get_green() const;
	uint8_t get_blue() const;
private:
	uint8_t m_red, m_green, m_blue;
};

class fileOpenError : runtime_error {
public:
	fileOpenError (const string &msg);
};

class Image {
public:
	Image (const string &file);
	RGB pixel_at (int x, int y);
	int get_width() const;
	int get_height() const;
private:
	QImage m_image;
};

}
#endif // IMAGE_H