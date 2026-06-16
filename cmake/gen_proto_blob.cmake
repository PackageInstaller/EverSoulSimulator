# gen_proto_blob.cmake — concatenate all ProtocolBuffers/Global/**/*.proto into one blob,
# mirroring the Android half of build.sh. Invoked via -P with SRC_DIR/BLOB.
file(GLOB_RECURSE PROTO_FILES "${SRC_DIR}/ProtocolBuffers/Global/*.proto")
list(SORT PROTO_FILES)
file(WRITE "${BLOB}" "")
foreach(proto ${PROTO_FILES})
  file(READ "${proto}" CONTENT)
  file(APPEND "${BLOB}" "\n===== ${proto} =====\n${CONTENT}\n")
endforeach()
