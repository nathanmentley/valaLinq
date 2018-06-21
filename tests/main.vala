using GLib;

using SkaCahToa.Linq.Tests.Collections;

public int main(string[] args) {
    Test.init(ref args);

    new DictionaryTests();
    new ListTests();
    new ListQueryableProviderTests();
    new QueryableTests();
    new QueueTests();
    new StackTests();
    new TupleTests();

    Test.run();

    return 0;
}
