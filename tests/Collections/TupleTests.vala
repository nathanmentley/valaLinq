using GLib;

using SkaCahToa.Linq.Collections;

namespace SkaCahToa.Linq.Tests.Collections {
    public class TupleTests {
        public TupleTests() {
            Test.add_func("/SkaCahToa/Linq/Collections/Tuple", () => {
                Tuple<int, int> tuple = new Tuple<int, int>(15, 21);

                assert(tuple.GetValue1() == 15);
                assert(tuple.GetValue2() == 21);
            });
        }
    }
}
