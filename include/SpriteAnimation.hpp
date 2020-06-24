#pragma once
#include "core/ECSTypes.hpp"

namespace Garden::Components
{
    class SpriteAnimation : public Garden::Component
    {
    public:
        static const ComponentType type = Garden::Types::SpriteAnimationType;
        SpriteAnimation(int width, int height, int rowCount, int frameCount, int speed, bool repeat)
            : m_width(width), m_height(height), m_rowCount(rowCount), m_frameCount(frameCount), m_speed(speed), m_repeat(repeat)
        {
            m_type = type;
        }

        int getSpeed() const { return m_speed; }
        int getRowCount() const { return m_rowCount; }
        int getFrameCount() const { return m_frameCount; }
        bool getRepeat() const { return m_repeat; }
        int getWidth() const { return m_width; }
        int getHeight() const { return m_height; }

    private:
        int m_width, m_height;
        int m_rowCount;
        int m_frameCount;
        int m_speed;
        bool m_repeat;
    };
} // namespace Garden::Components