module RandomParamApprox

using Distributions
using ForwardDiff
using Combinatorics
using StatsBase, Statistics
using LinearAlgebra
using Random
using Plots
using KernelDensity
using StatsFuns
using Interpolations
using Roots

export GammaAlt, GammaAltNegative, DiracContinuous, Copula, GaussianCopula, marginalize, MvDependent, MvGamma
export approximate_moments, 
       approximate_mean_variance_skewness, 
       approximate_transformed_distribution,
       approximate_transformed_distribution_skewed
export density2d

include("algebra.jl")
include("calculus.jl")
include("approximations.jl")
include("distributions.jl")
include("moments.jl")
include("plotting.jl")

end
