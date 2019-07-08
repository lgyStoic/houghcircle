#define cimg_display 0
#define cimg_use_png 1
#include "CImg.h"
#import <iostream>
#import <math.h>
#import <vector>
using namespace std;
using namespace cimg_library;


int main() {
    CImg<uint8_t> image("blury_circle.png");
    cout << "Dimensions:" << image.spectrum() << endl;
    const int height = image.height();
    const int width = image.width();
    CImg<uint8_t> binary_process(height, width);
    cout << "Height:" << height << "Width:" << width << endl;
    for(int x = 0; x < height; x++){
        // 0  黑色 255白色
        for(int y = 0; y < width; y++){
            if((int)image(x, y) < 255){
                binary_process(x, y) = 0;
            } else {
                binary_process(x, y) = 255;
            }
        }
    }
    binary_process.save("binary_process.png");
    

    float sobelX1[3] = {1, 2, 1};
    float sobelX2[3] = {-1, 0, 1};
    float sobelY1[3] = {-1, 0, 1};
    float sobelY2[3] = {1, 2, 1};

    const int height_with_padding = height + 2;
    const int width_with_padding = width + 2;
    CImg<uint8_t> binary_process_with_padding(height_with_padding, width_with_padding);
    for (int i = 0; i < height_with_padding; ++i)
    {
        for (int j = 0; j < width_with_padding; ++j)
        {
            binary_process_with_padding(i + 1, j + 1) = binary_process(i, j);
        }
    }
    for (int i = 0; i < height_with_padding; ++i)
    {
        binary_process_with_padding(i, 0) = 255;
        binary_process_with_padding(i, width_with_padding) = 255;
        binary_process_with_padding(0, i) = 255;
        binary_process_with_padding(width_with_padding, i) = 255;
    }

    CImg<float> gradImageX(height, width);
    CImg<float> gradImageY(height, width);
    for (int h = 0; h < height; ++h)
    {
        for (int w = 0; w < width; ++w)
        {
            for (int i = 0; i < 3; ++i)
            {
                for (int j = 0; j < 3; ++j)
                {
                    gradImageX(h ,w) += sobelX1[i] * sobelX2[j] * binary_process_with_padding(h + i, w + j);
                    gradImageY(h ,w) += sobelY1[i] * sobelY2[j] * binary_process_with_padding(h + i, w + j);
                }
            }
        }
    }

    CImg<uint8_t> gradImage(height, width);
    for (int h = 0; h < height; ++h)
    {
        for (int w = 0; w < width; ++w)
        {
            gradImage(h, w) = std::min((int)sqrt(pow(gradImageY(h ,w), 2) +  pow(gradImageX(h ,w), 2)), 255);

        }
    }

    gradImage.save("sobel.png");


    int radius_min = 10;
    int radius_max = height / 2;
    const long long volume = height * width * (radius_max - radius_min);
    long long *vote_for_image = (long long *)malloc(sizeof(long long) * volume);
    memset(vote_for_image, 0, sizeof(long long) * volume);
    float sinang[360];
    float cosang[360];
    for(int angle = 0; angle < 360; angle++) {
        sinang[angle] = sin(angle * M_PI / 180);
        cosang[angle] = cos(angle * M_PI / 180);
    }
    int rrange = radius_max - radius_min;
    for (int r = 0; r < rrange; ++r){
        for (int x = 0; x < height; ++x)
        {
            for (int y = 0; y < width; ++y)
            {
                if (gradImage(x, y) > 0)
                {
                    for(int angleindex = 0; angleindex < 360; angleindex++) {
                        int a = x - round((r + radius_min) * cosang[angleindex]);
                        int b = y - round((r + radius_min) * sinang[angleindex]);
                        if (a >= 0 && a < height && b >= 0 && b < width)
                        {
                            vote_for_image[r * width * height + a * width + b] += 1;
                        }
                    }
                } 
            }
        }
    }

    std::vector<int> centerX;
    std::vector<int> centerY;
    std::vector<int> radius_of_circle;
    std::vector<int> voted_number;

    for (int k = 0; k < rrange; ++k){
        for (int i = 0; i < height; ++i)
        {
            for (int j = 0; j < width; ++j)
            {
                
                long long current = vote_for_image[k * width * height + i * width + j];
                if (current > 300)
                {
                    cout << i << " " << j << " "<<current << endl;
                    centerX.push_back(i);
                    centerY.push_back(j);
                    radius_of_circle.push_back(k);
                    voted_number.push_back(current);
                }
            }
        }
    }

    for (int i = 0; i < centerX.size(); ++i)
    {
        image(centerX[i], centerY[i]) = 255;
        for (int d = 0; d < 360; ++d)
        {
            int x = centerX[i] + radius_of_circle[i] * cosang[d];
            int y = centerY[i] + radius_of_circle[i] * sinang[d];
            image(x, y) = voted_number[i];
        }
    }
    image.save("resule.png");
    free(vote_for_image);
    // cout << "circle center is(" << centerX << "," << centerY << ")" << "radius is" << maxradius << endl;
}


