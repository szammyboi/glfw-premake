---@diagnostic disable: lowercase-global, undefined-global

project "GLFW"
	kind "StaticLib"
    systemversion "latest"
	language "C"
	staticruntime "off"
	warnings "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/GLFW/glfw3.h",
		"include/GLFW/glfw3native.h",
		"src/glfw_config.h",

		"src/internal.h",
		"src/platform.h",
		"src/mappings.h",
        "src/context.c",
		"src/init.c",
		"src/input.c",
		"src/monitor.c",
		"src/platform.c",
		"src/vulkan.c",
		"src/window.c",
    	"src/egl_context.c",
		"src/osmesa_context.c",
		"src/null_platform.h",
		"src/null_joystick.h",
        "src/null_init.c",
		"src/null_monitor.c",
		"src/null_window.c",
		"src/null_joystick.c",

		"src/win32_time.h",
		"src/win32_thread.h",
		"src/win32_module.c",
    	"src/win32_time.c",
		"src/win32_thread.c",
		"src/win32_platform.h",
		"src/win32_joystick.h",
		"src/win32_init.c",
    	"src/win32_joystick.c",
		"src/win32_monitor.c",
		"src/win32_window.c",
        "src/wgl_context.c",
	}

	defines 
	{ 
		"_GLFW_WIN32",
		"_CRT_SECURE_NO_WARNINGS"
	}

    links 
    {
        "gdi32"
    }

    
	filter "configurations:debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:release"
		runtime "Release"
		optimize "speed"