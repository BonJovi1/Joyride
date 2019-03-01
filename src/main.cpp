#include "main.h"
#include "timer.h"
#include "ball.h"
#include "coins.h"
#include "ground.h"
#include "sky.h"
#include "enemy.h"
#include "boomerang.h"
#include "balloon.h"
#include "beam.h"
#include "magnet.h"
#include "powerup.h"
#include "ring.h"

using namespace std;

GLMatrices Matrices;
GLuint     programID;
GLFWwindow *window;

/**************************
* Customizable functions *
**************************/

long long total_score;
long long lives;
long long no_of_balloons = 0;
//defining objects of classes
Ball ball1;
Coin coins[500];
Balloon balloons[1000];
Ground ground;
Sky skies[1000];
Enemy enemies[10];
Beam beams[5];
Boomerang boom;
// Boomerang boom2;
Powerup powerup;
Powerup powerup2;
Magnet magnet;
Ring ring;
Ring ring2;

float screen_zoom = 0.5, screen_center_x = 0, screen_center_y = 0;
float camera_rotation_angle = 0;

Timer t60(1.0 / 60);
Timer t1(1.0 / 10);
// Eye - Location of camera. Don't change unless you are sure!!
glm::vec3 eye (0, 0, 1);
// Target - Where is the camera looking at.  Don't change unless you are sure!!
glm::vec3 target (0, 0, 0);
/* Render the scene with openGL */
/* Edit this function according to your assignment */
void draw() {
    // clear the color and depth in the frame buffer
    glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // use the loaded shader program
    // Don't change unless you know what you are doing
    glUseProgram (programID);

    
    // Up - Up vector defines tilt of camera.  Don't change unless you are sure!!
    glm::vec3 up (0, 1, 0);

    // Compute Camera matrix (view)
    Matrices.view = glm::lookAt( eye, target, up ); // Rotating Camera for 3D
    // Don't change unless you are sure!!
    // Matrices.view = glm::lookAt(glm::vec3(0, 0, 3), glm::vec3(0, 0, 0), glm::vec3(0, 1, 0)); // Fixed camera for 2D (ortho) in XY plane

    // Compute ViewProject matrix as view/camera might not be changed for this frame (basic scenario)
    // Don't change unless you are sure!!
    glm::mat4 VP = Matrices.projection * Matrices.view;

    // Send our transformation to the currently bound shader, in the "MVP" uniform
    // For each model you render, since the MVP will be different (at least the M part)
    // Don't change unless you are sure!!
    glm::mat4 MVP;  // MVP = Projection * View * Model

    // Rendering the scenes
    ball1.draw(VP);

    for (int i = 0; i < 100; ++i)
    {
    	if(coins[i].score == 0)
        	coins[i].draw(VP);
    }

    for (int i = 0; i < 1000; ++i)
        skies[i].draw(VP);
    
    for (int i = 0; i < 10; ++i)
    {
    	if(enemies[i].kill == 0)
        	enemies[i].draw(VP);
    }
    for (int i = 0; i < 5; ++i)
    {
    	if(beams[i].kill == 0)
        	beams[i].draw(VP);
    }
    for (int i = 0; i < no_of_balloons; ++i)
    {
    	if(balloons[i].kill == 0)
        	balloons[i].draw(VP);
    }

    ground.draw(VP);
    magnet.draw(VP);
    if(boom.kill == 0)
    	boom.draw(VP);
    // if(boom2.kill == 0)
    // 	boom2.draw(VP);
    if(powerup.kill == 0)
    	powerup.draw(VP);
    if(powerup2.kill == 0)
    	powerup2.draw(VP);

    ring.draw(VP);
    ring2.draw(VP);
    
    // for (int i = 0; i < 10; ++i)
    // {
    //     magnet[i].draw(VP);
    // }
}

void tick_input(GLFWwindow *window) {
    int left  = glfwGetKey(window, GLFW_KEY_LEFT);
    int right = glfwGetKey(window, GLFW_KEY_RIGHT);
    int up = glfwGetKey(window, GLFW_KEY_UP);
    int space = glfwGetKey(window, GLFW_KEY_SPACE);
    if (left) 
    	ball1.go_left();
    else if(right)
    	ball1.go_right();
    else if(up)
    	ball1.jump();
    else if(space)
    {
    	if (t1.processTick())
    		balloons[no_of_balloons++] = Balloon(ball1.position.x, ball1.position.y, COLOR_CYAN);
    }

    // glfwSetScrollCallback(window, scroll_callback);
}

//call tick functions for each object
void tick_elements() {
    ball1.tick();
    boom.tick(ball1);
    // boom2.tick(ball1);
    powerup.tick(ball1);
    powerup2.tick(ball1);
    magnet.tick(ball1);
    ring.tick(ball1);
    ring2.tick(ball1);

    for (int i = 0; i < no_of_balloons; ++i)
    {
    	balloons[i].tick();
    }
    for (int i = 0; i < 5; ++i)
    {
    	beams[i].tick();
    }
    
    for (int i = 0; i < 100; ++i)
        coins[i].tick();
    camera_rotation_angle += 1;
    eye.x += 1.3;
    target.x += 1.3;
}

/* Initialize the OpenGL rendering properties */
/* Add all the models to be created here */
void initGL(GLFWwindow *window, int width, int height) {
    /* Objects should be created before any other gl function and shaders */
    // Create the models
    int ctr = -300;
	for(int i=0; i<1000; i++)
	{
		skies[i] = Sky(ctr, 298, COLOR_GREEN);
		ctr += 30;
	}
    ball1 = Ball(-150, -150, COLOR_RED);
    magnet = Magnet(900, 0, COLOR_TURQUOISE);
    ground = Ground(-300, -300, COLOR_FUCHSIA);
    boom = Boomerang(250, 250, COLOR_WHITE);
    // boom2 = Boomerang(1650, 250, COLOR_WHITE);
    powerup = Powerup(2100, -150, COLOR_MARINE);
    powerup2 = Powerup(4000, -150, COLOR_MARINE);
    ring = Ring(4500, 0, 50, COLOR_TURQUOISE);
    ring2 = Ring(4500, 0, 40, COLOR_BACKGROUND);
    int j = 0;
    long long int n1, n2, n3;

    for (int c = 0; c < 100; c++) 
    {
        n1 = rand() % 4000 + 1;
        n2 = rand() % 250 + 1;

        // if(c%2 == 0)
        // 	n2*=-1;
        // if(n2 < -250)
        // 	n2 += 200;
        coins[j++] = Coin(n1, n2, COLOR_GOLD);
    }

    j=0;
    for (int c = 0; c < 10; c++) 
    {
        n1 = rand() % 4000 + 1;
        n2 = rand() % 250 + 1;

       
        enemies[j++] = Enemy(n1, n2, 0, COLOR_RED);

    }

    for (int c = 0; c < 5; c++) 
    {
        n1 = rand() % 4000 + 1;
        n2 = rand() % 250 + 1;

       
        beams[c] = Beam(n1, n2, 0, COLOR_MARINE);

    }
    // Create and compile our GLSL program from the shaders
    programID = LoadShaders("Sample_GL.vert", "Sample_GL.frag");
    // Get a handle for our "MVP" uniform
    Matrices.MatrixID = glGetUniformLocation(programID, "MVP");


    reshapeWindow (window, width, height);

    // Background color of the scene
    glClearColor (COLOR_BACKGROUND.r / 256.0, COLOR_BACKGROUND.g / 256.0, COLOR_BACKGROUND.b / 256.0, 0.0f); // R, G, B, A
    glClearDepth (1.0f);

    glEnable (GL_DEPTH_TEST);
    glDepthFunc (GL_LEQUAL);

    cout << "VENDOR: " << glGetString(GL_VENDOR) << endl;
    cout << "RENDERER: " << glGetString(GL_RENDERER) << endl;
    cout << "VERSION: " << glGetString(GL_VERSION) << endl;
    cout << "GLSL: " << glGetString(GL_SHADING_LANGUAGE_VERSION) << endl;
}


int main(int argc, char **argv) {
	total_score = 0;
	lives = 10;
    srand(time(0));
    int width  = 600;
    int height = 600;

    window = initGLFW(width, height);

    initGL (window, width, height);

    /* Draw in loop */
    while (!glfwWindowShouldClose(window)) {
        // Process timers

        if (t60.processTick()) 
        {
        	if(lives==0)
        		quit(window);
        	if(eye.x > ball1.position.x + 260)
        	{
        		ball1.position.x = eye.x - 260;
        	}
            // 60 fps
            // OpenGL Draw commands
            draw();
            // Swap Frame Buffer in double buffering
            glfwSwapBuffers(window);

            tick_elements();
            tick_input(window);

            for (int i = 0; i < 100; ++i)
            {
                if ((detect_collision(ball1.player_box, coins[i].coin_box)==1) && (coins[i].score == 0)) 
                {
                    coins[i].score = 1;
                    total_score ++;
                    printf("TOTAL SCORE: %lld ", total_score );
                    cout<<endl;
                }
            }

            for (int i = 0; i < 10; ++i)
            {
                if ((detect_collision(ball1.player_box, enemies[i].enemy_box)==1) && (enemies[i].kill == 0)) 
                {
                    enemies[i].kill = 1;
                    lives--;
                    printf("LIVES REMAINING: %lld ", lives );
                }
            }

            for (int i = 0; i < no_of_balloons; ++i)
            	for(int j =0; j<10; j++)
	            {
	                if ((detect_collision(enemies[j].enemy_box, balloons[i].balloon_box)==1) && (balloons[i].kill == 0) && (enemies[j].kill == 0)) 
	                {
	                    balloons[i].kill = 1;
	                    enemies[j].kill = 1;
	                    total_score ++;
	                    printf("TOTAL SCORE: %lld ", total_score );
                        // cout << endl;
	                }
	            }

            if ((detect_collision(ball1.player_box, boom.boom_box)==1) && (boom.kill == 0)) 
            {
                boom.kill = 1;
                lives--;
                printf("LIVES REMAINING: %lld ", lives );
            }
            // if ((detect_collision(ball1.player_box, boom2.boom_box)==1) && (boom2.kill == 0)) 
            // {
            //     boom2.kill = 1;
            //     lives--;
            //     printf("LIVES REMAINING: %lld ", lives );
            // }

            if ((detect_collision(ball1.player_box, powerup.power_box)==1) && (powerup.kill == 0)) 
            {
                powerup.kill = 1;
                lives+=5;
                printf("LIVES REMAINING: %lld ", lives );
            }

            if ((detect_collision(ball1.player_box, powerup2.power_box)==1) && (powerup2.kill == 0)) 
            {
                powerup2.kill = 1;
                lives+=5;
                printf("LIVES REMAINING: %lld ", lives );
            }

            if ((detect_collision(ball1.player_box, ring.ring_box)==1) && (ring.score == 0)) 
            {
                ring.score = 1;
                // lives+=5;
                printf("Collided!");
            }

            for (int i = 0; i < 5; ++i)
            {
                if ((detect_collision(ball1.player_box, beams[i].beam_box)==1) && (beams[i].kill == 0)) 
                {
                    beams[i].kill = 1;
                    lives--;
                    printf("LIVES REMAINING: %lld ", lives );
                }
            }

            // if(ball1.position.x == 870)
            // 	boom2 = Boomerang(1150, 1150, COLOR_WHITE);

            float magnetx, magnety;
		    magnetx = magnet.position.x;
		    magnety = magnet.position.y;
		    if(magnetx - ball1.position.x < 300 && magnetx > ball1.position.x)
		    {
		        ball1.position.x += 1.3;
		        ball1.position.y += 3;
		        // this->speedx += 0.5;
		        // this->speedy += 0.5;
		    }
		    else if(ball1.position.x - magnetx < 300 && magnetx < ball1.position.x)
		    {
		        ball1.position.x -= 1.3;
		        ball1.position.y += 3;
		    }
		    else if(ball1.position.x == magnetx && magnety > ball1.position.y)
		    {
		    	ball1.position.y += 3;
		    }
		    else if(ball1.position.x == magnetx && magnety < ball1.position.y)
		    {
		    	ball1.position.y -= 3;
		    }
		 
        }

        // Poll for Keyboard and mouse events
        glfwPollEvents();
    }

    quit(window);
}

bool detect_collision(bounding_box_t a, bounding_box_t b) {
    return (abs(a.x - b.x) * 2 < (a.width + b.width)) &&
           (abs(a.y - b.y) * 2 < (a.height + b.height));
}

void reset_screen() {
    float top    = screen_center_y + 150 / screen_zoom;
    float bottom = screen_center_y - 150 / screen_zoom;
    float left   = screen_center_x - 150 / screen_zoom;
    float right  = screen_center_x + 150 / screen_zoom;
    Matrices.projection = glm::ortho(left, right, bottom, top, 0.1f, 500.0f);
}
