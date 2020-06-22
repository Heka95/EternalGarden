#pragma once

#include "ComponentTypes.hpp"

namespace Garden::Components
{
    class RigidBody : public Garden::Component
    {
    public:
        static const ComponentType type = Types::RigidBodyType;
        RigidBody()
        {
            m_type = Types::RigidBodyType;
        }

        float mass = 1.0f;
        float gravity = 9.8f;
        Garden::Vector2D force{0, 0};
        Garden::Vector2D friction{0, 0};
        Garden::Vector2D position{0, 0};
        Garden::Vector2D velocity{0, 0};
        Garden::Vector2D acceleration{0, 0};
    };
} // namespace Garden::Components