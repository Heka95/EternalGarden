#pragma once

#include "components/World.hpp"
#include "systems/System.hpp"
#include "components/CameraComponent.hpp"
#include "components/Transformation.hpp"

namespace Garden::Systems
{
    class CameraSystem : public Garden::System
    {
    public:
        CameraSystem(int priority, Manager *manager, Garden::Components::CameraComponent *cameraComponent) : System(priority, {Garden::Components::Transform::type}, manager)
        {
            camera = cameraComponent;
        }
        virtual void preUpdate(float deltaTime) override;
        Garden::Components::CameraComponent *camera;
    };
} // namespace Garden::Systems