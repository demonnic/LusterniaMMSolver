setTriggerStayOpen("Xion entry read", 0)
MMSolver:checkLastSuggestion(MMSCOLOREDPINS,MMSWHITEPINS)
tempTimer(0.5, function() MMSolver:getValidGuess(true) end)
