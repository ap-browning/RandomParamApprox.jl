using RandomParamApprox
using Test
using Distributions

# Setup example problem
function f(θ)
    λ,R,r₀ = θ
    R / (1 + (R / r₀ - 1)*exp(-λ/3*10.0))
end
λ  = Normal(0.5,0.05)
R  = Normal(300.0,50.0)
r₀ = Normal(10.0,1.0)
θ  = Product([λ,R,r₀])
d = approximate_transformed_distribution(f,θ;order=3)

@testset "RandomParamApprox.jl" begin
    @test mean(approximate_transformed_distribution(f,θ;order=3)) ≈ 46.499268108625095
end
