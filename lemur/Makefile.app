# compiling C++ code
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<
%: %.o
	$(CXX) $(CXXFLAGS) -o $@ $< $(CPPLDFLAGS)

prefix = /usr/local
exec_prefix = ${prefix}
INC = ${prefix}/include
#antlr is already set up properly for include path

LIBPATH = ${exec_prefix}/lib
LIB = lemur
CXX = g++44
CFLAGS = -DPACKAGE_NAME=\"Lemur\" -DPACKAGE_TARNAME=\"lemur\" -DPACKAGE_VERSION=\"4.3\" -DPACKAGE_STRING=\"Lemur\ 4.3\" -DPACKAGE_BUGREPORT=\"project@lemurproject.org\" -DHAVE_LIBM=1 -DHAVE_LIBPTHREAD=1 -DHAVE_LIBZ=1 -DHAVE_NAMESPACES= -DISNAN_IN_NAMESPACE_STD= -DHAVE_FSEEKO=1 -DHAVE_MKSTEMP=1 -DHAVE_MKSTEMPS=1 -DP_HAS_ATOMIC_INT=1 -DP_NEEDS_GNU_CXX_NAMESPACE=1 -DWITH_DISTRIB=0 -DWITH_SUMMARIZATION=0 -DNDEBUG=1 -DWITH_CLUSTER=0  -g -O2  -I$(INC)
CXXFLAGS  = -DPACKAGE_NAME=\"Lemur\" -DPACKAGE_TARNAME=\"lemur\" -DPACKAGE_VERSION=\"4.3\" -DPACKAGE_STRING=\"Lemur\ 4.3\" -DPACKAGE_BUGREPORT=\"project@lemurproject.org\" -DHAVE_LIBM=1 -DHAVE_LIBPTHREAD=1 -DHAVE_LIBZ=1 -DHAVE_NAMESPACES= -DISNAN_IN_NAMESPACE_STD= -DHAVE_FSEEKO=1 -DHAVE_MKSTEMP=1 -DHAVE_MKSTEMPS=1 -DP_HAS_ATOMIC_INT=1 -DP_NEEDS_GNU_CXX_NAMESPACE=1 -DWITH_DISTRIB=0 -DWITH_SUMMARIZATION=0 -DNDEBUG=1 -DWITH_CLUSTER=0  -g -O2 -I$(INC)


CPPLDFLAGS  =  -L$(LIBPATH) -l$(LIB) -lz -lpthread -lm 
## specify your object files here
OBJS =
## specify your program here
PROG =

all: $(PROG)

$(PROG): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(CPPLDFLAGS)

clean:
	rm $(PROG) $(OBJS)