#include "Image.h"

namespace YQ {

RGB::RGB (uint8_t r, uint8_t g, uint8_t b)
	: m_red (r), m_green (g), m_blue (b)
{ }

uint8_t RGB::get_red() const
{
	return m_red;
}

uint8_t RGB::get_blue() const
{
	return m_blue;
}

uint8_t RGB::get_green() const
{
	return m_green;
}

RGB Image::pixel_at (int x, int y)
{
	auto q_rgb = m_image.pixel (x, y);
	RGB rgb (qRed (q_rgb), qGreen (q_rgb), qBlue (q_rgb));
	return rgb;
}

fileOpenError::fileOpenError (const string &msg)
	: runtime_error (msg) {}
	
Image::Image (const string &file)
{
	m_image = QImage (file.c_str());
	if (m_image.isNull())
		throw fileOpenError ("failed to open " + file);
}

int Image::get_width() const
{
	return m_image.width();
}

int Image::get_height() const
{
	return m_image.height();
}

}