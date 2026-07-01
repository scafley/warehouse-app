# Warehouse App

A Flutter client for the [Warehouse API](https://github.com/scafley/warehouse-dotnet-api) — the mobile side of a full stack learning project exploring backend–mobile integration end to end.

> 🚧 **Work in progress.** Authentication and the warehouses feature are implemented and working against the live API. Products and stock movements are planned next (see [Roadmap](#roadmap)).

## Tech stack

- **Flutter** / Dart
- **BLoC** (`flutter_bloc`) — state management
- **freezed** + **json_serializable** — immutable models and unions (build_runner)
- **GetIt** + **Injectable** — dependency injection
- **Dio** — HTTP client with an auth interceptor
- **go_router** — declarative navigation with an auth guard
- **flutter_secure_storage** — secure JWT storage

## Architecture

Feature-first structure with clear layers, mirroring the backend's separation of concerns:

```
lib/
├── core/
│   ├── network/    # Dio client + auth interceptor
│   ├── storage/    # secure token storage
│   ├── di/         # GetIt / Injectable setup
│   ├── router/     # go_router config + auth guard
│   └── auth/       # auth state notifier
└── features/
    ├── auth/       # login (data / bloc / ui)
    ├── splash/     # startup auth check
    └── warehouses/ # warehouses (data / bloc / ui)
```

Each feature is split into **data** (repository + models), **bloc** (events / states / logic) and **ui** (screens). Dependencies are injected via constructors; `getIt<...>()` is only called at the UI edge (when providing a bloc).

## Implemented

- **Authentication (end to end)** — login against `/api/auth/login`, JWT stored securely, automatically attached to every request via a Dio interceptor.
- **Auth flow** — splash screen checks for an existing token on startup (auto-login), a go_router guard protects routes, and a `401` response from the API automatically logs the user out.
- **Warehouses** — authenticated list and creation, backed by the protected `/api/warehouses` endpoints.

## Roadmap

- [ ] Products feature (list, details, create; filter by warehouse)
- [ ] Stock movements (inbound / outbound, history)
- [ ] Categories
- [ ] UI styling and polish
- [ ] Configurable API base URL (device / emulator / physical)

## Getting started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (managed with [FVM](https://fvm.app/) — see `.fvmrc` for the pinned version)
- A running instance of the [Warehouse API](https://github.com/scafley/warehouse-dotnet-api)

### Run

```bash
fvm install
fvm flutter pub get
fvm dart run build_runner build
fvm flutter run
```

> The API base URL is set in `lib/core/network/dio_client.dart`. Adjust it to match how the backend is running (e.g. `http://localhost:8080/api` for Docker, or your machine's IP for a physical device).
