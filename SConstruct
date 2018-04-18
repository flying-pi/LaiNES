from os import environ

VariantDir('build/src', 'src', duplicate=0)
VariantDir('build/lib', 'lib', duplicate=0)
flags = ['-O3', '-march=native', '-std=c++14','-g']

env = Environment(ENV       = environ,
                  CXX       = 'clang++',
                  CPPFLAGS  = ['-Wno-unused-value'],
                  CXXFLAGS  = flags,
                  LINKFLAGS = flags,
                  CPPPATH   = ['#simpleini', '#lib/include', '#src/include'],
                  LIBS      = ['SDL2', 'SDL2_image', 'SDL2_ttf'],
                  tools     = ['default','qt5'])

#set your local QT
env['QT5DIR'] = '/Users/admin/Qt/5.10.1/clang_64'
env['ENV']['PKG_CONFIG_PATH'] = '/Users/admin/Qt/5.10.1/clang_64/lib/pkgconfig'
env.Tool('qt5')
env.EnableQt5Modules([
                      'QtGui',
                      'QtCore',
                      'QtNetwork'
                     ])

env['QT5_AUTOSCAN'] = 1
env.Program('laines', Glob('build/*/*.cpp') + Glob('build/*/*/*.cpp'))
