return {
    'ms-jpq/chadtree',
    config = function(_, _)
        require'chadtree'
    end,
    build = 'python -m chadtree deps',
    lazy = true,
    cmd = 'CHADopen'
}
