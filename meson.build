project(
    'SkaCahToa.Linq',
    'vala', 'c',
    version: '0.0.1',
    license: 'LGPL',
    meson_version: '>=0.42.0'
)
if meson.get_compiler('vala').version().version_compare('<0.40')
    error('Missing required dependency: valac >= 0.40')
endif

glib = dependency('glib-2.0', version: '>=2.40')
gobject = dependency('gobject-2.0', version: '>=2.40')
gio = dependency('gio-2.0', version: '>=2.40')
gee = dependency('gee-0.8', version: '>= 0.8.5')

linq_sources = files(
    'src/Collections/ICollection.vala',
    'src/Collections/IDictionary.vala',
    'src/Collections/Dictionary.vala',
    'src/Collections/IEnumerable.vala',
    'src/Collections/IQueryable.vala',
    'src/Collections/IQueryableProvider.vala',
    'src/Collections/IList.vala',
    'src/Collections/ListQueryableProvider.vala',
    'src/Collections/List.vala',
    'src/Collections/Queue.vala',
    'src/Collections/Stack.vala',
    'src/Collections/Tuple.vala',

    'src/Expressions/ExpressionTree.vala',

    'src/Query/MySql/MySqlQueryable.vala',
    'src/Query/MySql/MySqlQueryableProvider.vala',
)
linq_lib = library(
    meson.project_name(),
    linq_sources,
    dependencies: [glib, gobject, gio, gee],
    vala_header: 'SkaCahToaLinq.h'
)

linq_tests_sources = files(
    'tests/Collections/DictionaryTests.vala',
    'tests/Collections/ListTests.vala',
    'tests/Collections/ListQueryableProviderTests.vala',
    'tests/Collections/QueryableTests.vala',
    'tests/Collections/QueueTests.vala',
    'tests/Collections/StackTests.vala',
    'tests/Collections/TupleTests.vala',
    'tests/main.vala'
)
executable(
    meson.project_name() + '_tests',
    linq_tests_sources,
    dependencies: [glib, gobject, gio, gee],
    link_with: [linq_lib]
)
