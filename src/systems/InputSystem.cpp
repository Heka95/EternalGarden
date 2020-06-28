#include "systems/InputSystem.hpp"
#include "components/RigidBody.hpp"
#include "components/SpriteRenderer.hpp"
#include "components/SpriteAnimation.hpp"
#include "GameEngine.hpp"

namespace Garden::Systems
{
    void InputSystem::preUpdate(float deltaTime)
    {
        SDL_Event event;
        while (SDL_PollEvent(&event))
        {
            windowEvents(event);
            switch (event.type)
            {
            case SDL_QUIT:
                GameEngine::getInstance().stopRunning();
                break;
            case SDL_KEYDOWN:
                m_keyStates = SDL_GetKeyboardState(nullptr);
                break;
            case SDL_KEYUP:
                m_keyStates = SDL_GetKeyboardState(nullptr);
                break;
            }
        }
    }

    void InputSystem::windowEvents(SDL_Event event)
    {
        if (event.window.event == SDL_WINDOWEVENT_RESIZED)
        {
            auto width = event.window.data1;
            auto height = event.window.data2;
            const SDL_Rect window{0, 0, width, height};
            GameEngine::getInstance().setWindowSize(window);
            // todo add camera
            //Camera::getInstance().setSceneSize(window.w, window.h);
        }
    }

    void InputSystem::updateEntity(float deltaTime, Entity e)
    {
        auto cCommand = getManager()->getComponent<Garden::Components::PlayerCommand>(e);
        cCommand->reset();

        if (getAxisKey(Axis::HORIZONTAL) == 1)
        {
            cCommand->isKeyMoveRight = true;
        }
        if (getAxisKey(Axis::HORIZONTAL) == -1)
        {
            cCommand->isKeyMoveLeft = true;
        }
        if (getAxisKey(Axis::VERTICAL) == -1)
        {
            cCommand->isKeyCrouching = true;
        }
        if (getKeyDown(SDL_SCANCODE_K))
        {
            cCommand->isKeyAttack = true;
        }
        if (getKeyDown(SDL_SCANCODE_J))
        {
            cCommand->isKeyJump = true;
        }

        auto rigidBody = getManager()->getComponent<Garden::Components::RigidBody>(e);
        auto renderer = getManager()->getComponent<Garden::Components::SpriteRenderer>(e);
        auto animation = getManager()->getComponent<Garden::Components::SpriteAnimation>(e);
        animation->currentAnimation = Garden::Components::AnimationType::IDLE;
        rigidBody->force = Vector2D::zero();
        rigidBody->isCrouching = false;
        rigidBody->isRunning = false;

        if (cCommand->isKeyMoveRight && !rigidBody->isAttacking)
        {
            rigidBody->force.X = (1 * rigidBody->runSpeed);
            renderer->flip = SDL_RendererFlip::SDL_FLIP_NONE;
            rigidBody->isRunning = true;
        }
        if (cCommand->isKeyMoveLeft && !rigidBody->isAttacking)
        {
            rigidBody->force.X = (-1 * rigidBody->runSpeed);
            renderer->flip = SDL_RendererFlip::SDL_FLIP_HORIZONTAL;
            rigidBody->isRunning = true;
        }
        if (cCommand->isKeyCrouching)
        {
            rigidBody->force = Vector2D::zero();
            rigidBody->isCrouching = true;
        }
        if (cCommand->isKeyAttack)
        {
            rigidBody->force = Vector2D::zero();
            rigidBody->isAttacking = true;
        }
        if (cCommand->isKeyJump && rigidBody->isGrounded)
        {
            rigidBody->force.Y = -rigidBody->jumpForce;
            rigidBody->isJumping = true;
            rigidBody->isGrounded = false;
        }
        if (cCommand->isKeyJump && rigidBody->isJumping && rigidBody->jumpRemainingTime > 0)
        {
            rigidBody->jumpRemainingTime -= deltaTime;
            rigidBody->force.Y = -rigidBody->jumpForce;
        }
        else
        {
            rigidBody->isJumping = false;
            rigidBody->jumpRemainingTime = rigidBody->jumpTime;
        }

        rigidBody->isFalling = (rigidBody->velocity.Y > 0 && !rigidBody->isGrounded);

        if (rigidBody->isAttacking && rigidBody->attackRemainingTime > 0)
        {
            rigidBody->attackRemainingTime -= deltaTime;
        }
        else
        {
            rigidBody->isAttacking = false;
            rigidBody->attackRemainingTime = rigidBody->attackTime;
        }
    }

    int InputSystem::getAxisKey(Axis axis)
    {
        switch (axis)
        {
        case HORIZONTAL:
            if (getKeyDown(SDL_SCANCODE_D) || getKeyDown(SDL_SCANCODE_RIGHT))
                return 1;
            if (getKeyDown(SDL_SCANCODE_A) || getKeyDown(SDL_SCANCODE_LEFT))
                return -1;
            break;

        case VERTICAL:
            if (getKeyDown(SDL_SCANCODE_W) || getKeyDown(SDL_SCANCODE_UP))
                return 1;
            if (getKeyDown(SDL_SCANCODE_S) || getKeyDown(SDL_SCANCODE_DOWN))
                return -1;
            break;

        default:
            return 0;
        }
        return 0;
    }

    bool InputSystem::getKeyDown(SDL_Scancode key)
    {
        return (m_keyStates[key] == 1);
    }

    void InputSystem::keyUp()
    {
        m_keyStates = SDL_GetKeyboardState(nullptr);
    }

    void InputSystem::keyDown()
    {
        m_keyStates = SDL_GetKeyboardState(nullptr);
    }
} // namespace Garden::Systems