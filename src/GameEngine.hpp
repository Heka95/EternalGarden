#pragma once

#include <memory>
#include "Types/GameTypes.hpp"
#include "GraphicWindow.hpp"
#include "World.hpp"
#include "GameObject.hpp"
#include "GameState.hpp"

class GameEngine
{
public:
    virtual ~GameEngine() = default;
    static GameEngine &getInstance();
    void configureAndInit(Garden::Configuration &configuration);
    void doEvents();
    void doUpdate();
    void doDraw();
    void stopRunning();
    void release();
    bool isRunning() const;
    GraphicWindow *getGraphicWindow();
    SDL_Renderer *getRenderer();
    void popState();
    void pushState(GameState* current);
    void changeState(GameState* target);

private:
    GameEngine();
    GameEngine(const GameEngine &object) = delete;
    GameEngine &operator=(const GameEngine &object) = delete;
    static std::unique_ptr<GameEngine> m_instance;
    std::unique_ptr<GraphicWindow> m_graphicWindow;
    SDL_Renderer *m_renderer;
    bool m_isRunning;
    std::vector<GameState *> m_states;
};