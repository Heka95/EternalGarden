#include <iostream>
#include <algorithm>
#include "SDL_ttf.h"
#include "SDL_image.h"
#include "GameEngine.hpp"
#include "managers/GameManager.hpp"
#include "Event.hpp"

GameEngine::GameEngine() : m_isRunning(false)
{
    m_renderer = nullptr;
    m_graphicWindow.reset(new GraphicWindow());
}

GraphicWindow *GameEngine::getGraphicWindow()
{
    return m_graphicWindow.get();
}

SDL_Renderer *GameEngine::getRenderer()
{
    return m_renderer;
}

bool GameEngine::isRunning() const
{
    return m_isRunning;
}

void GameEngine::stopRunning()
{
    m_isRunning = false;
    std::cout << "Engine stop asked !" << std::endl;
}

void GameEngine::configureAndInit(Garden::Configuration &configuration)
{
    if (m_graphicWindow->createContext(configuration))
    {
        m_renderer = SDL_CreateRenderer(m_graphicWindow->getWindow(), -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
        if (m_renderer != nullptr)
        {
            m_isRunning = true;
        }
        SDL_RenderSetLogicalSize(m_renderer, 1280, 720);
    }

    // Create ECS
    auto viewbox = SDL_Rect{0, 0, m_graphicWindow->getWindowSize().width, m_graphicWindow->getWindowSize().height};
    m_manager = new Garden::Managers::GameManager(m_renderer, viewbox, "content/scripts/levels/00_level_arena.lua", m_graphicWindow.get());
    m_manager->initSystems();
    m_manager->registerHandler<Garden::ExitEvent>(&GameEngine::onExitGame, this);
    m_manager->registerHandler<Garden::PauseEvent>(&GameEngine::onPause, this);
}

Garden::EventStatus GameEngine::onPause(Garden::Entity source, Garden::EventType type, Garden::Event *event)
{
    assert(type == Garden::PauseEvent::type);
    auto pause = static_cast<Garden::PauseEvent *>(event)->pause;
    m_manager->isActive = !m_manager->isActive;
    return Garden::EventStatus::KEEP_AFTER_CALL;
}

Garden::EventStatus GameEngine::onExitGame(Garden::Entity source, Garden::EventType type, Garden::Event *event)
{
    assert(type == Garden::ExitEvent::type);
    auto exitAsked = static_cast<Garden::ExitEvent *>(event)->exitAsked;
    m_isRunning = !exitAsked;
    return Garden::EventStatus::DELETE_AFTER_CALL;
}

void GameEngine::release()
{
    delete m_manager;
    SDL_DestroyRenderer(m_renderer);
    m_graphicWindow.release();
    IMG_Quit();
    TTF_Quit();
    SDL_Quit();
}