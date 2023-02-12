local status, slides = pcall(require, 'slides')
if not status then
    return
end

slides.setup({
    bin = 'slides',
    fullscreen = true
})
