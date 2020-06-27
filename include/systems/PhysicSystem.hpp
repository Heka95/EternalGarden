#pragma once

#include "components/RigidBody.hpp"
#include "systems/System.hpp"

namespace Garden::Systems
{
    class PhysicSystem : public Garden::System
    {
    public:
        PhysicSystem(int priority, Manager *manager) : System(priority, {Garden::Components::RigidBody::type}, manager)
        {
        }
        virtual void updateEntity(float deltaTime, Entity e) override;
    };
} // namespace Garden::Systems