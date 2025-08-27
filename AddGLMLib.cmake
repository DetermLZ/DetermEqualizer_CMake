# check if glm is already available
if(NOT TARGET glm)
    include(FetchContent)

    # Fetch GLM for matrix operations
    FetchContent_Declare(
        glm
        GIT_REPOSITORY https://github.com/g-truc/glm.git
        GIT_TAG 0.9.9.8
    )

    FetchContent_MakeAvailable(glm)

endif()
