# Auto-generated by repobuild, do not modify directly.

# Some compiler specific flag settings.
CXX_GCC := $(shell $(CXX) --version | egrep '(^gcc|^g++)' | head -n 1 | wc -l)
CC_GCC := $(shell $(CC) --version | egrep '(^gcc|^g++)' | head -n 1 | wc -l)
ifeq ($(CC_GCC),1)
	CFLAGS= -pthread -g -Wall -Werror -Wno-sign-compare -O3 -Wno-unknown-warning-option
else
	CFLAGS= -stdlib=libc++ -pthread -g -Wall -Werror -Wno-sign-compare -O3 -Qunused-arguments -Wno-unknown-warning-option
endif
ifeq ($(CXX_GCC),1)
	LDFLAGS= -std=c++11 -lpthread -g -O3 -L/usr/local/lib -L/opt/local/lib
	CXXFLAGS= -pthread -g -Wall -Werror -Wno-sign-compare -O3 -Wno-unknown-warning-option -std=c++11 -DUSE_CXX0X
else
	LDFLAGS= -std=c++11 -stdlib=libc++ -lpthread -g -O3 -L/usr/local/lib -L/opt/local/lib
	CXXFLAGS= -stdlib=libc++ -pthread -g -Wall -Werror -Wno-sign-compare -O3 -Qunused-arguments -Wno-unknown-warning-option -std=c++11 -DUSE_CXX0X
endif

.gen-obj/repobuild.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/base/flags.h common/base/init.h common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/gflags/src/google/gflags.h common/third_party/google/gflags/src/google/gflags_completions.h common/third_party/google/gflags/src/util.h common/third_party/google/re2/stringpiece.h env/input.h env/target.h generator/generator.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/allnodes.h nodes/cc_binary.h nodes/cc_library.h nodes/confignode.h nodes/gen_sh.h nodes/go_binary.h nodes/go_library.h nodes/node.h nodes/proto_library.h reader/buildfile.h reader/parser.h repobuild.cc
	@mkdir -p .gen-obj
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files -Icommon/third_party/google/gflags/src repobuild.cc -o .gen-obj/repobuild.cc.o

.gen-obj/repobuild: .gen-obj/common/base/init.cc.o .gen-obj/common/file/fileutil.cc.o .gen-obj/common/strings/path.cc.o .gen-obj/common/strings/strutil.cc.o .gen-obj/common/strings/varmap.cc.o .gen-obj/common/third_party/google/gflags/src/gflags.cc.o .gen-obj/common/third_party/google/gflags/src/gflags_completions.cc.o .gen-obj/common/third_party/google/gflags/src/gflags_nc.cc.o .gen-obj/common/third_party/google/gflags/src/gflags_reporting.cc.o .gen-obj/common/third_party/google/re2/stringpiece.cc.o .gen-obj/common/third_party/google/re2/stringprintf.cc.o .gen-obj/env/input.cc.o .gen-obj/env/target.cc.o .gen-obj/generator/generator.cc.o .gen-obj/json/json_reader.cpp.o .gen-obj/json/json_value.cpp.o .gen-obj/json/json_writer.cpp.o .gen-obj/nodes/allnodes.cc.o .gen-obj/nodes/cc_binary.cc.o .gen-obj/nodes/cc_library.cc.o .gen-obj/nodes/confignode.cc.o .gen-obj/nodes/gen_sh.cc.o .gen-obj/nodes/go_binary.cc.o .gen-obj/nodes/go_library.cc.o .gen-obj/nodes/node.cc.o .gen-obj/nodes/proto_library.cc.o .gen-obj/reader/buildfile.cc.o .gen-obj/reader/parser.cc.o .gen-obj/repobuild.cc.o
	$(LINK.cc) .gen-obj/common/base/init.cc.o .gen-obj/common/file/fileutil.cc.o .gen-obj/common/strings/path.cc.o .gen-obj/common/strings/strutil.cc.o .gen-obj/common/strings/varmap.cc.o .gen-obj/common/third_party/google/gflags/src/gflags.cc.o .gen-obj/common/third_party/google/gflags/src/gflags_completions.cc.o .gen-obj/common/third_party/google/gflags/src/gflags_nc.cc.o .gen-obj/common/third_party/google/gflags/src/gflags_reporting.cc.o .gen-obj/common/third_party/google/re2/stringpiece.cc.o .gen-obj/common/third_party/google/re2/stringprintf.cc.o .gen-obj/env/input.cc.o .gen-obj/env/target.cc.o .gen-obj/generator/generator.cc.o .gen-obj/json/json_reader.cpp.o .gen-obj/json/json_value.cpp.o .gen-obj/json/json_writer.cpp.o .gen-obj/nodes/allnodes.cc.o .gen-obj/nodes/cc_binary.cc.o .gen-obj/nodes/cc_library.cc.o .gen-obj/nodes/confignode.cc.o .gen-obj/nodes/gen_sh.cc.o .gen-obj/nodes/go_binary.cc.o .gen-obj/nodes/go_library.cc.o .gen-obj/nodes/node.cc.o .gen-obj/nodes/proto_library.cc.o .gen-obj/reader/buildfile.cc.o .gen-obj/reader/parser.cc.o .gen-obj/repobuild.cc.o -o .gen-obj/repobuild

repobuild: .gen-obj/repobuild
	pwd > /dev/null
	ln -f -s .gen-obj/repobuild repobuild

.gen-src/common:
	@mkdir -p .gen-src; [ -f common ] || mkdir -p common; ln -f -s ../common .gen-src/common

.gen-src/common/.dummy: .gen-src/common
	@[ -f .gen-src/common/.dummy ] || touch .gen-src/common/.dummy

.gen-src/.gen-files/common:
	@mkdir -p .gen-src/.gen-files; [ -f .gen-files/common ] || mkdir -p .gen-files/common; ln -f -s ../../.gen-files/common .gen-src/.gen-files/common

.gen-src/.gen-files/common/.dummy: .gen-src/.gen-files/common
	@[ -f .gen-src/.gen-files/common/.dummy ] || touch .gen-src/.gen-files/common/.dummy

.gen-src/repobuild:
	@mkdir -p .gen-src; [ -f . ] || mkdir -p .; ln -f -s .. .gen-src/repobuild

.gen-src/repobuild/.dummy: .gen-src/repobuild
	@[ -f .gen-src/repobuild/.dummy ] || touch .gen-src/repobuild/.dummy

.gen-src/.gen-files/repobuild:
	@mkdir -p .gen-src/.gen-files; [ -f .gen-files ] || mkdir -p .gen-files; ln -f -s ../../.gen-files .gen-src/.gen-files/repobuild

.gen-src/.gen-files/repobuild/.dummy: .gen-src/.gen-files/repobuild
	@[ -f .gen-src/.gen-files/repobuild/.dummy ] || touch .gen-src/.gen-files/repobuild/.dummy

common/base/flags:

.PHONY: common/base/flags

.gen-obj/common/base/init.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/base/flags.h common/base/init.h common/third_party/google/gflags/src/google/gflags.h common/third_party/google/gflags/src/google/gflags_completions.h common/third_party/google/gflags/src/util.h common/base/init.cc
	@mkdir -p .gen-obj/common/base
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files -Icommon/third_party/google/gflags/src common/base/init.cc -o .gen-obj/common/base/init.cc.o

common/base/init: .gen-obj/common/base/init.cc.o

.PHONY: common/base/init

common/log/log:

.PHONY: common/log/log

common/strings/stringpiece:

.PHONY: common/strings/stringpiece

.gen-obj/common/file/fileutil.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/file/fileutil.h common/log/log.h common/file/fileutil.cc
	@mkdir -p .gen-obj/common/file
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files common/file/fileutil.cc -o .gen-obj/common/file/fileutil.cc.o

common/file/fileutil: .gen-obj/common/file/fileutil.cc.o

.PHONY: common/file/fileutil

.gen-obj/common/strings/strutil.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h common/strings/strutil.cc
	@mkdir -p .gen-obj/common/strings
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files common/strings/strutil.cc -o .gen-obj/common/strings/strutil.cc.o

.gen-obj/common/strings/path.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h common/strings/path.cc
	@mkdir -p .gen-obj/common/strings
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files common/strings/path.cc -o .gen-obj/common/strings/path.cc.o

.gen-obj/common/strings/varmap.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h common/strings/varmap.cc
	@mkdir -p .gen-obj/common/strings
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files common/strings/varmap.cc -o .gen-obj/common/strings/varmap.cc.o

common/strings/strutil: .gen-obj/common/strings/strutil.cc.o .gen-obj/common/strings/path.cc.o .gen-obj/common/strings/varmap.cc.o

.PHONY: common/strings/strutil

.gen-obj/env/target.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h env/target.h env/target.cc
	@mkdir -p .gen-obj/env
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files env/target.cc -o .gen-obj/env/target.cc.o

env/target: .gen-obj/env/target.cc.o

.PHONY: env/target

.gen-obj/env/input.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/base/flags.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/gflags/src/google/gflags.h common/third_party/google/gflags/src/google/gflags_completions.h common/third_party/google/gflags/src/util.h common/third_party/google/re2/stringpiece.h env/input.h env/input.cc
	@mkdir -p .gen-obj/env
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files -Icommon/third_party/google/gflags/src env/input.cc -o .gen-obj/env/input.cc.o

env/input: .gen-obj/env/input.cc.o

.PHONY: env/input

.gen-obj/generator/generator.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/base/flags.h common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/gflags/src/google/gflags.h common/third_party/google/gflags/src/google/gflags_completions.h common/third_party/google/gflags/src/util.h common/third_party/google/re2/stringpiece.h env/input.h env/target.h generator/generator.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/allnodes.h nodes/cc_binary.h nodes/cc_library.h nodes/confignode.h nodes/gen_sh.h nodes/go_binary.h nodes/go_library.h nodes/node.h nodes/proto_library.h reader/buildfile.h reader/parser.h generator/generator.cc
	@mkdir -p .gen-obj/generator
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files -Icommon/third_party/google/gflags/src generator/generator.cc -o .gen-obj/generator/generator.cc.o

generator/generator: .gen-obj/generator/generator.cc.o

.PHONY: generator/generator

.gen-obj/common/third_party/google/re2/stringpiece.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/third_party/google/re2/stringpiece.h common/third_party/google/re2/stringpiece.cc
	@mkdir -p .gen-obj/common/third_party/google/re2
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files common/third_party/google/re2/stringpiece.cc -o .gen-obj/common/third_party/google/re2/stringpiece.cc.o

.gen-obj/common/third_party/google/re2/stringprintf.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/third_party/google/re2/stringpiece.h common/third_party/google/re2/stringprintf.cc
	@mkdir -p .gen-obj/common/third_party/google/re2
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files common/third_party/google/re2/stringprintf.cc -o .gen-obj/common/third_party/google/re2/stringprintf.cc.o

common/third_party/google/re2/re2: .gen-obj/common/third_party/google/re2/stringpiece.cc.o .gen-obj/common/third_party/google/re2/stringprintf.cc.o

.PHONY: common/third_party/google/re2/re2

.gen-obj/nodes/node.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/node.h reader/buildfile.h nodes/node.cc
	@mkdir -p .gen-obj/nodes
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files nodes/node.cc -o .gen-obj/nodes/node.cc.o

nodes/node: .gen-obj/nodes/node.cc.o

.PHONY: nodes/node

.gen-obj/nodes/confignode.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/confignode.h nodes/node.h reader/buildfile.h nodes/confignode.cc
	@mkdir -p .gen-obj/nodes
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files nodes/confignode.cc -o .gen-obj/nodes/confignode.cc.o

nodes/confignode: .gen-obj/nodes/confignode.cc.o

.PHONY: nodes/confignode

.gen-obj/nodes/cc_library.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/cc_library.h nodes/node.h reader/buildfile.h nodes/cc_library.cc
	@mkdir -p .gen-obj/nodes
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files nodes/cc_library.cc -o .gen-obj/nodes/cc_library.cc.o

nodes/cc_library: .gen-obj/nodes/cc_library.cc.o

.PHONY: nodes/cc_library

.gen-obj/nodes/cc_binary.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/cc_binary.h nodes/node.h reader/buildfile.h nodes/cc_binary.cc
	@mkdir -p .gen-obj/nodes
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files nodes/cc_binary.cc -o .gen-obj/nodes/cc_binary.cc.o

nodes/cc_binary: .gen-obj/nodes/cc_binary.cc.o

.PHONY: nodes/cc_binary

.gen-obj/nodes/go_library.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/go_library.h nodes/node.h reader/buildfile.h nodes/go_library.cc
	@mkdir -p .gen-obj/nodes
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files nodes/go_library.cc -o .gen-obj/nodes/go_library.cc.o

nodes/go_library: .gen-obj/nodes/go_library.cc.o

.PHONY: nodes/go_library

.gen-obj/nodes/go_binary.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/go_binary.h nodes/node.h reader/buildfile.h nodes/go_binary.cc
	@mkdir -p .gen-obj/nodes
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files nodes/go_binary.cc -o .gen-obj/nodes/go_binary.cc.o

nodes/go_binary: .gen-obj/nodes/go_binary.cc.o

.PHONY: nodes/go_binary

.gen-obj/nodes/gen_sh.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/gen_sh.h nodes/node.h reader/buildfile.h nodes/gen_sh.cc
	@mkdir -p .gen-obj/nodes
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files nodes/gen_sh.cc -o .gen-obj/nodes/gen_sh.cc.o

nodes/gen_sh: .gen-obj/nodes/gen_sh.cc.o

.PHONY: nodes/gen_sh

.gen-obj/nodes/proto_library.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/gen_sh.h nodes/node.h nodes/proto_library.h reader/buildfile.h nodes/proto_library.cc
	@mkdir -p .gen-obj/nodes
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files nodes/proto_library.cc -o .gen-obj/nodes/proto_library.cc.o

nodes/proto_library: .gen-obj/nodes/proto_library.cc.o

.PHONY: nodes/proto_library

.gen-obj/nodes/allnodes.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/allnodes.h nodes/cc_binary.h nodes/cc_library.h nodes/confignode.h nodes/gen_sh.h nodes/go_binary.h nodes/go_library.h nodes/node.h nodes/proto_library.h reader/buildfile.h nodes/allnodes.cc
	@mkdir -p .gen-obj/nodes
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files nodes/allnodes.cc -o .gen-obj/nodes/allnodes.cc.o

nodes/allnodes: .gen-obj/nodes/allnodes.cc.o

.PHONY: nodes/allnodes

.gen-obj/reader/buildfile.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/re2/stringpiece.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h reader/buildfile.h reader/buildfile.cc
	@mkdir -p .gen-obj/reader
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files reader/buildfile.cc -o .gen-obj/reader/buildfile.cc.o

reader/buildfile: .gen-obj/reader/buildfile.cc.o

.PHONY: reader/buildfile

.gen-obj/reader/parser.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy common/base/flags.h common/file/fileutil.h common/log/log.h common/strings/path.h common/strings/strutil.h common/strings/varmap.h common/third_party/google/gflags/src/google/gflags.h common/third_party/google/gflags/src/google/gflags_completions.h common/third_party/google/gflags/src/util.h common/third_party/google/re2/stringpiece.h env/input.h env/target.h json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h nodes/allnodes.h nodes/cc_binary.h nodes/cc_library.h nodes/confignode.h nodes/gen_sh.h nodes/go_binary.h nodes/go_library.h nodes/node.h nodes/proto_library.h reader/buildfile.h reader/parser.h reader/parser.cc
	@mkdir -p .gen-obj/reader
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files -Icommon/third_party/google/gflags/src reader/parser.cc -o .gen-obj/reader/parser.cc.o

reader/parser: .gen-obj/reader/parser.cc.o

.PHONY: reader/parser

.gen-src/json:
	@mkdir -p .gen-src; [ -f json ] || mkdir -p json; ln -f -s ../json .gen-src/json

.gen-src/json/.dummy: .gen-src/json
	@[ -f .gen-src/json/.dummy ] || touch .gen-src/json/.dummy

.gen-src/.gen-files/json:
	@mkdir -p .gen-src/.gen-files; [ -f .gen-files/json ] || mkdir -p .gen-files/json; ln -f -s ../../.gen-files/json .gen-src/.gen-files/json

.gen-src/.gen-files/json/.dummy: .gen-src/.gen-files/json
	@[ -f .gen-src/.gen-files/json/.dummy ] || touch .gen-src/.gen-files/json/.dummy

.gen-obj/json/json_reader.cpp.o: .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h json/json_reader.cpp
	@mkdir -p .gen-obj/json
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files json/json_reader.cpp -o .gen-obj/json/json_reader.cpp.o

.gen-obj/json/json_value.cpp.o: .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h json/json_value.cpp
	@mkdir -p .gen-obj/json
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files json/json_value.cpp -o .gen-obj/json/json_value.cpp.o

.gen-obj/json/json_writer.cpp.o: .gen-src/.gen-files/json/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/json/.dummy .gen-src/repobuild/.dummy json/autolink.h json/config.h json/features.h json/forwards.h json/json.h json/reader.h json/value.h json/writer.h json/json_writer.cpp
	@mkdir -p .gen-obj/json
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files json/json_writer.cpp -o .gen-obj/json/json_writer.cpp.o

json/json: .gen-obj/json/json_reader.cpp.o .gen-obj/json/json_value.cpp.o .gen-obj/json/json_writer.cpp.o

.PHONY: json/json

.gen-obj/common/third_party/google/gflags/src/gflags.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/third_party/google/gflags/src/google/gflags.h common/third_party/google/gflags/src/google/gflags_completions.h common/third_party/google/gflags/src/util.h common/third_party/google/gflags/src/gflags.cc
	@mkdir -p .gen-obj/common/third_party/google/gflags/src
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files -Icommon/third_party/google/gflags/src common/third_party/google/gflags/src/gflags.cc -o .gen-obj/common/third_party/google/gflags/src/gflags.cc.o

.gen-obj/common/third_party/google/gflags/src/gflags_completions.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/third_party/google/gflags/src/google/gflags.h common/third_party/google/gflags/src/google/gflags_completions.h common/third_party/google/gflags/src/util.h common/third_party/google/gflags/src/gflags_completions.cc
	@mkdir -p .gen-obj/common/third_party/google/gflags/src
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files -Icommon/third_party/google/gflags/src common/third_party/google/gflags/src/gflags_completions.cc -o .gen-obj/common/third_party/google/gflags/src/gflags_completions.cc.o

.gen-obj/common/third_party/google/gflags/src/gflags_nc.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/third_party/google/gflags/src/google/gflags.h common/third_party/google/gflags/src/google/gflags_completions.h common/third_party/google/gflags/src/util.h common/third_party/google/gflags/src/gflags_nc.cc
	@mkdir -p .gen-obj/common/third_party/google/gflags/src
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files -Icommon/third_party/google/gflags/src common/third_party/google/gflags/src/gflags_nc.cc -o .gen-obj/common/third_party/google/gflags/src/gflags_nc.cc.o

.gen-obj/common/third_party/google/gflags/src/gflags_reporting.cc.o: .gen-src/.gen-files/common/.dummy .gen-src/.gen-files/repobuild/.dummy .gen-src/common/.dummy .gen-src/repobuild/.dummy common/third_party/google/gflags/src/google/gflags.h common/third_party/google/gflags/src/google/gflags_completions.h common/third_party/google/gflags/src/util.h common/third_party/google/gflags/src/gflags_reporting.cc
	@mkdir -p .gen-obj/common/third_party/google/gflags/src
	$(COMPILE.cc) -I. -I.gen-files -I.gen-src -I.gen-src/.gen-files -Icommon/third_party/google/gflags/src common/third_party/google/gflags/src/gflags_reporting.cc -o .gen-obj/common/third_party/google/gflags/src/gflags_reporting.cc.o

common/third_party/google/gflags/gflags: .gen-obj/common/third_party/google/gflags/src/gflags.cc.o .gen-obj/common/third_party/google/gflags/src/gflags_completions.cc.o .gen-obj/common/third_party/google/gflags/src/gflags_nc.cc.o .gen-obj/common/third_party/google/gflags/src/gflags_reporting.cc.o

.PHONY: common/third_party/google/gflags/gflags

clean:
	rm -f .gen-src/common/.dummy
	rm -f .gen-src/.gen-src/common/common
	rm -f .gen-src/.gen-files/common/.dummy
	rm -f .gen-src/.gen-files/common
	rm -f .gen-src/repobuild/.dummy
	rm -f .gen-src/.gen-src/repobuild/repobuild
	rm -f .gen-src/.gen-files/repobuild/.dummy
	rm -f .gen-src/.gen-files/repobuild
	rm -f .gen-src/json/.dummy
	rm -f .gen-src/.gen-src/json/json
	rm -f .gen-src/.gen-files/json/.dummy
	rm -f .gen-src/.gen-files/json
	rm -rf .gen-obj
	rm -rf .gen-files
	rm -rf .gen-src

all: repobuild

.PHONY: clean all

.DEFAULT_GOAL=all

