# Changelog

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
