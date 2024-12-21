cmake_minimum_required(VERSION 3.10) # 3.28 is quite recent; 3.10 is widely supported
project(mes LANGUAGES CXX) # Use CXX for C++ projects
add_executable(${PROJECT_NAME} mos.cpp) # Corrected file extension and added source directly
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20) # cxx_std_20 is the correct feature name
# Explicitly link the C++ standard library (important!)
