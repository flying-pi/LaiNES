#include <QString>

#include "gui.hpp"
#include "config.hpp"
#include "cartridge.hpp"
#include "remotecontol.h"

#include "iostream"

void runGame(char *romPath){
    std::cout << romPath;
    GUI::load_settings();
    GUI::init();
    Cartridge::load(romPath);
    GUI::toggle_pause();
    GUI::run();
}

int main(int argc, char *argv[])
{
    std::cout << argv[0];
    std::cout<<std::endl<<std::endl<<argv[2]<<'\t'<<argv[3]<<std::endl;
    QString port = QString::fromUtf8(argv[2]);
    RemoteContol remoteControl();
    runGame(argv[1]);
    return 0;
}
