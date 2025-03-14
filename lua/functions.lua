function OpenGodotFile (fileName, line, column)

    print(fileName)
    print(line)
    print(column)
end

vim.api.nvim_create_user_command('OpenGodotFile', function(opts)

    local args = opts.fargs

    local fileName = ""
    local line = 0
    local column = 0

    if args[1] then
        fileName = args[1]
    end

    if args[2] then
        line = args[2]
    end

    if args[3] then
        column = args[3]
    end

    OpenGodotFile(fileName, line, column)

end, { nargs = '*'})

