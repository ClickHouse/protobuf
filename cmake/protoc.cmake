set(protoc_files
  ${protobuf_source_dir}/src/google/protobuf/compiler/main.cc
)

add_executable(protoc ${protoc_files})
target_link_libraries(protoc libprotobuf libprotoc)

# workaround for https://github.com/ClickHouse/ClickHouse/issues/7114
target_link_libraries(protoc pthread)

add_executable(protobuf::protoc ALIAS protoc)
