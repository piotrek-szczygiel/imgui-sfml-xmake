add_rules("mode.debug", "mode.release")
add_requires("imgui", "sfml", "imgui-sfml")

target("imgui-sfml-example")
    set_kind("binary")
    add_files("src/*.cpp")
    add_packages("imgui", "sfml", "imgui-sfml")

package("imgui-sfml")
    add_urls("https://github.com/eliasdaler/imgui-sfml/archive/$(version).tar.gz")
    add_versions("v2.3", "4e2f520916d1d676a4553f5c266ed869e32808b0f4681b9b603280257323a45b")
    add_deps("imgui", "sfml")

    on_install("windows", "linux", "macosx", "mingw", function (package)
        io.writefile("xmake.lua", [[
            add_requires("imgui", "sfml")
            target("imgui-sfml")
                set_kind("static")
                add_includedirs(".")
                add_files("*.cpp")
                add_headerfiles("*.h")
                add_packages("imgui", "sfml")
        ]])
        import("package.tools.xmake").install(package)
    end)
package_end()
