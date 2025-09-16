# CMakeList.txt: 顶层 CMake 项目文件，在此处执行全局配置
# 并包含子项目。
#
cmake_minimum_required (VERSION 3.8)

# 如果支持，请为 MSVC 编译器启用热重载。
if (POLICY CMP0141)
  cmake_policy(SET CMP0141 NEW)
  set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<IF:$<AND:$<C_COMPILER_ID:MSVC>,$<CXX_COMPILER_ID:MSVC>>,$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>,$<$<CONFIG:Debug,RelWithDebInfo>:ProgramDatabase>>")
endif()

project(ShaderBlock LANGUAGES CXX C)

# 告诉CMake去集中的include文件夹里查找头文件
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/vendor/include)

# 告诉CMake去集中的lib文件夹里查找.lib文件
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/vendor/lib) # <--- 注意路径变化

# 包含子项目。
add_subdirectory ("ShaderBlock")
