project "FileSystem"
    kind "StaticLib"

    files "fs/src/**.cpp"

    zpm.export(function()
        includedirs "fs/include"
        
        cppdialect "C++17"
        
        zpm.uses "Zefiros-Software/Preproc"
        
        filter "system:not windows"
            links "stdc++fs"
        
        filter {}
    end)