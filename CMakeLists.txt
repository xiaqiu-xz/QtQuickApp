cmake_minimum_required(VERSION 3.21)
project(MyQtApp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 查找 Qt6 模块
find_package(Qt6 COMPONENTS Core Quick Qml REQUIRED)

# Qt 标准项目设置（自动处理头文件路径、MOC、RCC、UIC）
qt_standard_project_setup()

# 可执行文件
qt_add_executable(MyQtApp
    main.cpp
)

# 添加 QML 模块
qt_add_qml_module(MyQtApp
    URI MyQtApp# 属于模块MyQtApp/下面 qrc:/MyQtApp/main.qml
    VERSION 1.0
    QML_FILES main.qml
)
include(GNUInstallDirs)

# 链接 Qt 库（Qt6::Core/Quick/Qml 都包含）
target_link_libraries(MyQtApp
    PRIVATE Qt6::Core
            Qt6::Quick
            Qt6::Qml
)
