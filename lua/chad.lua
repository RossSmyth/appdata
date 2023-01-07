local chad = {
    'ms-jpq/chadtree',
    config = function ()
        require'chadtree'
    end,
    run = 'python -m chadtree deps'
}

return chad
