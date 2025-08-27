# check if glfw is already available
if(NOT TARGET glfw)
    include(FetchContent)

    FetchContent_Declare(
        glfw
        GIT_REPOSITORY https://github.com/glfw/glfw.git
        GIT_TAG 3.3.8
    )

    FetchContent_MakeAvailable(glfw)

endif()
