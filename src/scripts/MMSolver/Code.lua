if not MMSolver then
  MMSolver = {
    enabled = false,
    mms = require("@PKGNAME@.mastermindsolver")
  }
  disableTrigger("MMSolver")
end

function MMSolver.newXion()
  local items = {
    "torus",
    "sphere",
    "disc",
    "cube",
    "spiral",
    "cylinder",
    "pyramid" 
  }
  local options = {
    places = 4,
    items = items,
    allowDuplicates = true,
    template = "push |t here",
    autoSend = true,
  }
  MMSolver.start(options)
end

function MMSolver.start(options)
  MMSolver.solver = MMSolver.mms:new(options)
  enableTrigger("MMSolver")
  MMSolver.enabled = true
  MMSolver.solver:getValidGuess(true)
end

function MMSolver.stop()
  disableTrigger("MMSolver")
  MMSolver.solver = nil
  MMSolver.MMSCOLOREDPINS = nil
  MMSolver.MMSWHITEPINS = nil
  MMSolver.enabled = false
end

function MMSolver.checkAndContinue()
  MMSolver.solver:checkLastSuggestion(MMSolver.MMSCOLOREDPINS, MMSolver.MMSWHITEPINS)
  tempTimer(0.2, function()
    if MMSolver.solver then
      MMSolver.solver:getValidGuess(true)
    end
  end)
end
