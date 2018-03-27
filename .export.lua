project "FileSystem"
    kind "StaticLib"

    files "fs/src/**.cpp"

    zpm.export(function()
        includedirs "fs/include"
        
        cppdialect "C++17"
        
        zpm.uses "Zefiros-Software/Preproc"
        
        filter "system:linux"
            links "stdc++fs"

        --filter "system:macosx"
        --    links {
        --       "c++experimental",
        --        "stdc++fs",
        --        "pthread"
        --    }
        
        filter {}
    end)