# Install Julia and packages
sudo dnf install julia -y

julia -e "using Pkg; 
Pkg.add(\"Plots\")
Pkg.add(\"CSV\")
Pkg.add(\"DataFrames\")
Pkg.add(\"ControlSystems\")
Pkg.add(\"PlotlyJS\")
Pkg.add(\"MAT\")
Pkg.add(\"Polynomials\")
Pkg.add(\"Statistics\")
Pkg.add(\"DifferentialEquations\")
Pkg.add(\"JuMP\")
Pkg.add(\"OSQP\")
Pkg.add(\"StatsBase\")"