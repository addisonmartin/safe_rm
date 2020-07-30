#!/usr/bin/env bash

test_inputs_directory="$PWD/tests/inputs"
safe_rm_directory="$PWD/safe_rm"

for test_input_file in "$test_inputs_directory"/*.input; do

  test_input=$(cat "$test_input_file")

  actual_test_output_file=${test_input_file/inputs/actual_outputs}
  actual_test_output_file=${$actual_test_output_file/input/output}

  "$safe_rm_directory" "$test_input" >> "$actual_test_output_file"

  # expected_test_output_file=${test_input_file/inputs/expected_outputs}
  # expected_test_output_file=${expected_test_output_file/input/output}

  # diff --minimal "$actual_test_output_file" "$expected_test_output_file"
done
