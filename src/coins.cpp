#include "coins.h"
#include "main.h"

Coin::Coin(float x, float y, color_t color) {
    this->position = glm::vec3(x, y, 0);
    this->rotation = 0;
    this->score=0;

    this->coin_box.x = x;
    this->coin_box.y = y;
    this->coin_box.width = 16;
    this->coin_box.height = 16;
    
    static GLfloat vertex_buffer_data[2700];
    float a,b;
    a=8.0f;
    b=8.0f;

    for(int i=0; i<300; i++)
    {
    	vertex_buffer_data[9*i] = 0.0f;
    	vertex_buffer_data[9*i + 1] = 0.0f;
    	vertex_buffer_data[9*i + 2] = 0.0f;
    	
    	vertex_buffer_data[9*i + 3] = 8.0f;
    	vertex_buffer_data[9*i + 4] = 8.0f;
    	vertex_buffer_data[9*i + 5] = 0.0f;
    	
    	vertex_buffer_data[9*i + 6] = a*cos(2.0*M_PI/300.0) - b*sin(2.0*M_PI/300.0);
    	vertex_buffer_data[9*i + 7] = a*sin(2.0*M_PI/300.0) + b*cos(2.0*M_PI/300.0);
    	vertex_buffer_data[9*i + 8] = 0.0f;

    	a = vertex_buffer_data[9*i + 6];
    	b = vertex_buffer_data[9*i + 7];
    }

        
	this->object = create3DObject(GL_TRIANGLES, 3*300, vertex_buffer_data, color, GL_FILL);
}

void Coin::draw(glm::mat4 VP) {
    Matrices.model = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate (this->position);    // glTranslatef
    glm::mat4 rotate    = glm::rotate((float) (this->rotation * M_PI / 180.0f), glm::vec3(0, 1, 0));
    // No need as coords centered at 0, 0, 0 of cube arouund which we waant to rotate
    // rotate          = rotate * glm::translate(glm::vec3(0, -0.6, 0));
    Matrices.model *= (translate * rotate);
    glm::mat4 MVP = VP * Matrices.model;
    glUniformMatrix4fv(Matrices.MatrixID, 1, GL_FALSE, &MVP[0][0]);
    draw3DObject(this->object);
}

void Coin::set_position(float x, float y) {
    this->position = glm::vec3(x, y, 0);
}

void Coin::tick() 
{
	

}