#include "main.h"

#ifndef BALL_H
#define BALL_H

class Ball {
public:
    Ball() {}
    Ball(float x, float y, color_t color);
    
    glm::vec3 position;
    float rotation;
    float velocity;
    float xvelocity;
    bounding_box_t player_box;

    void draw(glm::mat4 VP);
    void set_position(float x, float y);
    void go_right();
    void go_left();
    void jump();
    void come_down();
    void tick();
    
    double speed;
    long long lives;
    int jumpstate;
    int jumptime;

private:
    VAO *object;
};

#endif // BALL_H
