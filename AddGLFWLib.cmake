# check if glfw is already available
if(NOT TARGET glfw)
    # Prefer system-installed GLFW (avoids network dependency during build)
    find_package(glfw3 3.3 QUIET)
    if(NOT glfw3_FOUND)
        include(FetchContent)

        FetchContent_Declare(
            glfw
            GIT_REPOSITORY https://github.com/DetermLZ/glfw.git
            GIT_TAG 3.3.8
        )

        FetchContent_MakeAvailable(glfw)
    endif()
endif()
