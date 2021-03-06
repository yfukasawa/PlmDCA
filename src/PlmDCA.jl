module PlmDCA
using Compat # for tuples 0.3 -> 0.4
using GaussDCA


# @osx_only @everywhere dlopen("libstdc++",RTLD_GLOBAL) # patch for using NLopt on mac os x. 
                                                        # now seems to be irrelevant, in case of 
                                                        # problems, try uncomment.
using NLopt
export PlmOut, plmdca, plmdcasym, mutualinfo

include("types.jl")
include("utils.jl")
include("plmdca_asym.jl")
include("decimation_asym.jl")
include("plmdca_sym.jl")
include("decimation_sym.jl")
include("mi.jl")
end
