local items = {
  "torus",
  "sphere",
  "disc",
  "cube",
  "spiral",
  "cylinder",
  "pyramid" 
}
local mms = require("MDK.mastermindsolver")
MMSolver = mms:new({
  places = 4,
  items = items,
  allowDuplicates = true,
  template = "push |t here",
  autoSend = true,
})
MMSolver:getValidGuess(true)
