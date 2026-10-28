# Changelog

All notable changes to this project will be documented in this file.

## [1.1.0] - 2026-10-28

### Fixed

- The default endpoint is now `https://dashboard.bugstack.ai/api/ingest/sdk`.
  It was `https://api.bugstack.dev/api/capture`, which is not bugstack's
  ingest address, so events sent with the default setting did not reach
  bugstack. Apps that set `config.endpoint` themselves are unaffected.
- The gem's homepage, documentation link, contact and security addresses
  now point at bugstack.ai.

## [1.0.0] - 2026-02-13

### Added

- Core SDK with `Bugstack.init` and `Bugstack.capture_exception`
- Background thread transport with retry and exponential backoff
- SHA-256 error fingerprinting and client-side deduplication
- `before_send` hook for event inspection/modification/filtering
- `ignored_errors` for skipping specific error types or messages
- `dry_run` mode for transparent debugging
- `enabled` kill switch
- Block-style configuration
- Rails integration via Railtie and Rack middleware
- Sinatra integration via `register`
- Generic integration via `at_exit` hook
- Zero runtime gem dependencies
