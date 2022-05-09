project(test_withdraw)

set(EOSIO_WASM_OLD_BEHAVIOR "Off")
find_package(eosio.cdt)

add_contract( test_withdraw test_withdraw test_withdraw.cpp )
target_include_directories( test_withdraw PUBLIC ${CMAKE_SOURCE_DIR}/../include )
target_ricardian_directory( test_withdraw ${CMAKE_SOURCE_DIR}/../ricardian )