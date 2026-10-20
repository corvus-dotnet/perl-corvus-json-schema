# perl-corvus-json-schema

A [Bowtie](https://github.com/bowtie-json-schema/bowtie) test harness for
[JSON::Schema::Corvus](https://metacpan.org/dist/JSON-Schema-Corvus), the Corvus JSON Schema evaluator in pure Perl,
part of [Corvus.JsonSchema](https://github.com/corvus-dotnet/Corvus.JsonSchema). A schema is compiled into Perl, with
no dependency beyond Perl's core.

Its image is published to `ghcr.io/bowtie-json-schema/perl-corvus-json-schema` and run via
`bowtie run -i perl-corvus-json-schema`.

The image installs the distribution from its CPAN tarball, as released, which it copies from
`ghcr.io/corvus-dotnet/corvus-json-schema-perl`, and runs the harness (`bowtie_corvus_json_schema.pl`). Dependabot
keeps that image tag, and the Perl image's, in the Dockerfile up to date.
