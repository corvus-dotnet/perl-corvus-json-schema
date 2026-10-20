# JSON::Schema::Corvus as released to CPAN (src-perl/JSON-Schema-Corvus in Corvus.JsonSchema): its version is this tag,
# which Dependabot keeps up to date.
FROM ghcr.io/corvus-dotnet/corvus-json-schema-perl:0.1.0 AS dist

FROM perl:5.44.0-slim
COPY --from=dist /corvus-json-schema /tmp/dist
# Pure Perl, with no dependency beyond Perl's core: installed from its CPAN tarball, with its tests.
RUN cpanm /tmp/dist/*.tar.gz && rm -rf /tmp/dist /root/.cpanm
COPY bowtie_corvus_json_schema.pl /usr/local/bin/
CMD ["perl", "/usr/local/bin/bowtie_corvus_json_schema.pl"]
