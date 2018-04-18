import qbs

Project {
    minimumQbsVersion: "1.7.1"

    CppApplication {
        Depends { name: "Qt.core" }

        cpp.cxxLanguageVersion: "c++14"

        cpp.defines: [
            // The following define makes your compiler emit warnings if you use
            // any feature of Qt which as been marked deprecated (the exact warnings
            // depend on your compiler). Please consult the documentation of the
            // deprecated API in order to know how to port your code away from it.
            "QT_DEPRECATED_WARNINGS",

            // You can also make your code fail to compile if you use deprecated APIs.
            // In order to do so, uncomment the following line.
            // You can also select to disable deprecated APIs only up to a certain version of Qt.
            //"QT_DISABLE_DEPRECATED_BEFORE=0x060000" // disables all the APIs deprecated before Qt 6.0.0
        ]

        consoleApplication: true
        files: [
            "lib/Blip_Buffer.cpp",
            "lib/Multi_Buffer.cpp",
            "lib/Nes_Apu.cpp",
            "lib/Nes_Namco.cpp",
            "lib/Nes_Oscs.cpp",
            "lib/Nes_Vrc6.cpp",
            "lib/Nonlinear_Buffer.cpp",
            "lib/Sound_Queue.cpp",
            "lib/apu_snapshot.cpp",
            "lib/include/Blip_Buffer.h",
            "lib/include/Blip_Synth.h",
            "lib/include/Multi_Buffer.h",
            "lib/include/Nes_Apu.h",
            "lib/include/Nes_Namco.h",
            "lib/include/Nes_Oscs.h",
            "lib/include/Nes_Vrc6.h",
            "lib/include/Nonlinear_Buffer.h",
            "lib/include/Sound_Queue.h",
            "lib/include/apu_snapshot.h",
            "lib/include/blargg_common.h",
            "lib/include/blargg_source.h",
            "lib/include/boost/config.hpp",
            "lib/include/boost/cstdint.hpp",
            "lib/include/boost/static_assert.hpp",
            "simpleini/ConvertUTF.c",
            "simpleini/ConvertUTF.h",
            "simpleini/LICENCE.txt",
            "simpleini/Makefile",
            "simpleini/README.md",
            "simpleini/SimpleIni.h",
            "simpleini/SimpleIni.sln",
            "simpleini/SimpleIni.vcproj",
            "simpleini/ini.syn",
            "simpleini/package.cmd",
            "simpleini/simpleini.doxy",
            "simpleini/simpleini.dsp",
            "simpleini/simpleini.dsw",
            "simpleini/snippets.cpp",
            "simpleini/test.cmd",
            "simpleini/test1-expected.ini",
            "simpleini/test1-input.ini",
            "simpleini/test1.cpp",
            "simpleini/testsi-EUCJP.ini",
            "simpleini/testsi-SJIS.ini",
            "simpleini/testsi-UTF8.ini",
//            "simpleini/testsi.cpp",
            "src/apu.cpp",
            "src/cartridge.cpp",
            "src/config.cpp",
            "src/cpu.cpp",
            "src/gui.cpp",
            "src/include/apu.hpp",
            "src/include/cartridge.hpp",
            "src/include/common.hpp",
            "src/include/config.hpp",
            "src/include/cpu.hpp",
            "src/include/gui.hpp",
            "src/include/joypad.hpp",
            "src/include/mapper.hpp",
            "src/include/mappers/mapper0.hpp",
            "src/include/mappers/mapper1.hpp",
            "src/include/mappers/mapper2.hpp",
            "src/include/mappers/mapper3.hpp",
            "src/include/mappers/mapper4.hpp",
            "src/include/menu.hpp",
            "src/include/ppu.hpp",
            "src/include/remotecontol.h",
            "src/joypad.cpp",
            "src/main.cpp",
            "src/mapper.cpp",
            "src/mappers/mapper1.cpp",
            "src/mappers/mapper2.cpp",
            "src/mappers/mapper3.cpp",
            "src/mappers/mapper4.cpp",
            "src/menu.cpp",
            "src/palette.inc",
            "src/ppu.cpp",
            "src/remotecontol.cpp",
        ]

        cpp.includePaths: [
            "lib/include",
            "src/include",
            "simpleini",
        ]

        cpp.dynamicLibraries: [
            "SDL2",
            "SDL2_image",
            "SDL2_ttf",
        ]

        Group {     // Properties for the produced executable
            fileTagsFilter: "application"
            qbs.install: true
        }

        Group {
                name: "Runtime resources"
                files: [
                    "res/*"
                ]
                qbs.install: true
                qbs.installDir: "res"
            }



        Group {
                name: "Nes roms"
                files: [
                    "./../../nes_dir/*"
                ]
                qbs.install: true
                qbs.installDir: "roms"
            }
    }
}
