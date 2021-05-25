if not MMSolver.enabled then return end
if not line:find("all previous entries cleared") then
  echo("\nWE WON!!!\n")
else
  echo("\nWe lost =(\nBut never fear, let's try again!\n")
  MMSolver.stop()
  MMSolver.newXion()
end

