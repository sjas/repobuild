// Test objects
[
 { "config": {
     "component": "testdata",
     "plugins": [ "//testdata/plugin:simple_plugin" ]
 } },

 { "cc_library": {
     "name" : "foo",
     "cc_sources" : [ "foo.cc" ],
     "cc_headers" : [ "foo.h" ],
     "dependencies": [ "//testdata/a:foo_pred_a",
                       "//testdata/b:foo_pred_b",
                       "//testdata/c:foo_pred_c",
                       "//testdata/d:foo_pred_d" 
     ]
   }
 },

 { "cc_embed_data": {
     "name": "bar_data",
     "files": [ "bar_data.txt", "bar_data2.txt" ],
     "namespace": [ "testdata", "bar_data" ]
 } },

 { "cc_library": {
     "name" : "bar",
     "cc_sources" : [ "ba*.cc" ],
     "cc_headers" : [ "bar.h" ],
     "dependencies": [ "//testdata/b:bar_pred_b",
                       ":bar_data"
     ],
     "cc_compile_args": [ "-O3" ]
   }
 },

 { "cc_shared_library": {
     "name" : "bar_shared",
     "cc_headers" : [ "bar.h" ],
     "dependencies": [ ":bar" ],
     "major_version": "3",
     "minor_version": "1",
     "release_version": "0"
   }
 },

 { "cc_binary": {
     "name" : "main",
     "cc_sources" : [ "main.cc" ],
     "dependencies": [ ":foo", ":bar" ],
     "cc_linker_args": [ "-lm" ]
   }
 },

 { "py_binary": {
     "name" : "py_main",
     "py_sources" : [ "test.py" ],
     "dependencies": [ "//common/base:py_flags",
                       "//testdata/a:test" ]
   }
 },

 { "java_binary": {
     "name" : "java_main",
     "java_sources" : [ "MainClass.java" ],
     "dependencies": [ "//testdata/a:test_java" ]
   }
 },

 { "go_binary": {
    "name": "go_main",
    "go_sources": [ "main.go" ],
    "dependencies": [ "//testdata/a:bar_go" ]
 } },

 { "go_test": {
    "name": "go_main_test",
    "go_sources": [ "main_test.go" ],
    "dependencies": [ "//testdata/a:bar_go" ]
 } },

 { "simple_plugin": {
    "name": "my_name",
    "sources": [ "main2.go" ]
 } }
]