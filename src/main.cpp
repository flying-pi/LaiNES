#include "gui.hpp"
#include "config.hpp"
#include "cartridge.hpp"

#include "iostream"

int main(int argc, char *argv[])
{
    GUI::load_settings();
    GUI::init();
    if(argc==2){
        Cartridge::load(argv[1]);
        GUI::toggle_pause();
    }
    GUI::run();

    return 0;
}
