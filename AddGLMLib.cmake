# check if glm is already available
if(NOT TARGET glm)
    # Prefer system-installed GLM (avoids network dependency during build)
    find_package(glm QUIET)
    if(NOT glm_FOUND)
        include(FetchContent)

        # Fetch GLM for matrix operations
        FetchContent_Declare(
            glm
            GIT_REPOSITORY https://github.com/g-truc/glm.git
            GIT_TAG 0.9.9.8
        )

        FetchContent_MakeAvailable(glm)
    endif()
endif()
