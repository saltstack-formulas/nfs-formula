# Changelog

## [0.12.1](https://github.com/saltstack-formulas/nfs-formula/compare/v0.12.0...v0.12.1) (2021-06-24)


### Bug Fixes

* **osfamilymap:** fix no `grains.init` on *BSD ([53b5b39](https://github.com/saltstack-formulas/nfs-formula/commit/53b5b39f250e82c04ff02e6e9a6b0d203349cb54)), closes [#38](https://github.com/saltstack-formulas/nfs-formula/issues/38)


### Continuous Integration

* enable Vagrant-based testing using GitHub Actions ([8b7a927](https://github.com/saltstack-formulas/nfs-formula/commit/8b7a927a0188b71242280d49ee65c622108a72d9))
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] ([f912cb6](https://github.com/saltstack-formulas/nfs-formula/commit/f912cb6272c6ab29951e8227fa2bcf5c19cf431b))
* add `arch-master` to matrix and update `.travis.yml` [skip ci] ([dc8ee52](https://github.com/saltstack-formulas/nfs-formula/commit/dc8ee52e89e4fcbb2cc01d458b64290ed05b72b6))
* **kitchen+gitlab:** adjust matrix to add `3003` [skip ci] ([20db001](https://github.com/saltstack-formulas/nfs-formula/commit/20db00170866ee1dfb3cce7240032eaeaba55bc0))

# [0.12.0](https://github.com/saltstack-formulas/nfs-formula/compare/v0.11.1...v0.12.0) (2021-04-03)


### Code Refactoring

* **service:** split out nfs service handling into dedicated state ([ad8d4b8](https://github.com/saltstack-formulas/nfs-formula/commit/ad8d4b89dc1f20d8bb02abcfbd2e98e2d0395317))


### Continuous Integration

* **commitlint:** ensure `upstream/master` uses main repo URL [skip ci] ([3d81fea](https://github.com/saltstack-formulas/nfs-formula/commit/3d81feaab31734c149c50d59b2a057e62e8463af))
* **gemfile+lock:** use `ssf` customised `kitchen-docker` repo [skip ci] ([be724ae](https://github.com/saltstack-formulas/nfs-formula/commit/be724aed004193eb45a0b94c7a1274cb1a6aa227))
* **gitlab-ci:** add `rubocop` linter (with `allow_failure`) [skip ci] ([e0274da](https://github.com/saltstack-formulas/nfs-formula/commit/e0274daa9acc2b069ceb9f3a77c2a630ed4cfa34))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([4405b21](https://github.com/saltstack-formulas/nfs-formula/commit/4405b2151768067098c1431007416db65daf36f7))
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] ([8ef3472](https://github.com/saltstack-formulas/nfs-formula/commit/8ef34725eb0cffae615d47346238c624ee104880))
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] ([ef34ebb](https://github.com/saltstack-formulas/nfs-formula/commit/ef34ebba22b3f5255dec3c1faeb3e877982b87b6))
* **pre-commit:** add to formula [skip ci] ([b4b0896](https://github.com/saltstack-formulas/nfs-formula/commit/b4b0896979895c82be592ae3f0232647d8580521))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([def21c3](https://github.com/saltstack-formulas/nfs-formula/commit/def21c3ba004e806e7ac4aa608ab05efdeae06fe))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([6bea9ea](https://github.com/saltstack-formulas/nfs-formula/commit/6bea9eaedde9b1b29f56f15ec080649a405691a1))
* **pre-commit:** update hook for `rubocop` [skip ci] ([c298c9a](https://github.com/saltstack-formulas/nfs-formula/commit/c298c9a7cecfb15213441105d9f83cd47e7cb621))


### Features

* **oscodenamemap:** add support for openSUSE Tumbleweed ([5c30f49](https://github.com/saltstack-formulas/nfs-formula/commit/5c30f49cef7c20a76201505550ad9976822fa61b))
* **osfamilymap:** add support for Gentoo ([aae6ce6](https://github.com/saltstack-formulas/nfs-formula/commit/aae6ce6414fc077c65b96c8f55e519863e8a5ed7))
* **service:** allow disabling of nfs services ([2bfffc0](https://github.com/saltstack-formulas/nfs-formula/commit/2bfffc06a919546ae5775010ba4e33a5e200938b))


### Tests

* standardise use of `share` suite & `_mapdata` state [skip ci] ([b3d113a](https://github.com/saltstack-formulas/nfs-formula/commit/b3d113a49eef5b459aa83a12881a888f83a0dc2c))

## [0.11.1](https://github.com/saltstack-formulas/nfs-formula/compare/v0.11.0...v0.11.1) (2020-07-06)


### Bug Fixes

* **null:** replace `None` with null in yaml files ([88a3c54](https://github.com/saltstack-formulas/nfs-formula/commit/88a3c544cca607c22b661c4d59df3012cc21208d))


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([c8c240f](https://github.com/saltstack-formulas/nfs-formula/commit/c8c240f300b5e59913bfd0be039a59fe460ad2b3))
* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([5f3dc36](https://github.com/saltstack-formulas/nfs-formula/commit/5f3dc366f38cd0759eff9f2b4ff1e5546dd19d65))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([a0f3722](https://github.com/saltstack-formulas/nfs-formula/commit/a0f372258bdf9c1e55ef0d24442d9088ca576999))
* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([c8ae973](https://github.com/saltstack-formulas/nfs-formula/commit/c8ae973a61a933453e0b769233cef3d2355b1cc0))
* **kitchen+travis:** remove `master-py2-arch-base-latest` [skip ci] ([26cf881](https://github.com/saltstack-formulas/nfs-formula/commit/26cf881085950553d6ccb28a19100e22ac438cb8))
* **travis:** add notifications => zulip [skip ci] ([c1d4ce0](https://github.com/saltstack-formulas/nfs-formula/commit/c1d4ce0d7b4da976b241506df29b6f992afa7cf9))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([c15158b](https://github.com/saltstack-formulas/nfs-formula/commit/c15158b1ec0aebbd249c5cddfa7e1ee2d0e88679))
* **travis:** run `shellcheck` during lint job [skip ci] ([5efc351](https://github.com/saltstack-formulas/nfs-formula/commit/5efc35189d6da8440e4822cf3ea7af8e91b463e3))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([a20ce32](https://github.com/saltstack-formulas/nfs-formula/commit/a20ce32841077e418b0e15155c081b4014e9a9a1))
* **workflows/commitlint:** add to repo [skip ci] ([26bc2b4](https://github.com/saltstack-formulas/nfs-formula/commit/26bc2b410cbc5b9bd3b48e771dc4149e481f127f))
* workaround issues with newly introduced `amazonlinux-1` [skip ci] ([da5453c](https://github.com/saltstack-formulas/nfs-formula/commit/da5453c87bd2d98a2d191f11ec4f9906d6cce2bf))

# [0.11.0](https://github.com/saltstack-formulas/nfs-formula/compare/v0.10.0...v0.11.0) (2019-11-20)


### Bug Fixes

* **map.jinja:** add missing reference to `osfinger` grain ([d56f55e](https://github.com/saltstack-formulas/nfs-formula/commit/d56f55e6cafb88f5f6f5012eda1e50a304684362))
* **osfingermap:** update `service_name` for `CentOS-6` ([780c062](https://github.com/saltstack-formulas/nfs-formula/commit/780c0622284c98464a65a7f7cba3660b5ef94cbd))
* **osmap:** update `service_name` for current versions of Fedora ([2731708](https://github.com/saltstack-formulas/nfs-formula/commit/27317085f7f5435fd11cbe8351802ce66bb2df99))


### Continuous Integration

* **travis:** finalise enabled instances ([1255431](https://github.com/saltstack-formulas/nfs-formula/commit/1255431d0d2a2ede0a7696a13710fb67df52c680))


### Features

* implementing semantic release ([ad826bc](https://github.com/saltstack-formulas/nfs-formula/commit/ad826bc23ef2b576ba298ea81007357cfd0a5d63))


### Styles

* fix linters errors ([18acd66](https://github.com/saltstack-formulas/nfs-formula/commit/18acd667c0299a7a9438d57f5f7d120df2841125))
