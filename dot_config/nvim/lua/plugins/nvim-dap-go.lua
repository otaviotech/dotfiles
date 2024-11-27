return {
  "leoluz/nvim-dap-go",
  -- config = true,
  -- this config adds the --check-go-version flag to the delve command
  opts = {
    delve = {
      build_flags = "-tags=unit",
      args = {
        "--check-go-version=false",
      },
    },
  },
}
