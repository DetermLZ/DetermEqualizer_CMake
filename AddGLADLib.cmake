
# check if glad is already available
if(NOT TARGET glad)
    # Prefer system-installed GLAD (avoids network dependency during build)
    find_package(glad QUIET)
    if(NOT glad_FOUND)
        include(FetchContent)


        FetchContent_Declare(
            glad
            GIT_REPOSITORY https://github.com/DetermLZ/glad.git
            GIT_TAG v0.1.36
        )


        FetchContent_MakeAvailable(glad)
    endif()
endif()
