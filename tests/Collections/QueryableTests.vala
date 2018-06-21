using GLib;

namespace SkaCahToa.Linq.Tests.Collections {
    public class QueryableTests {
        public QueryableTests() {
            Test.add_func("/SkaCahToa/Linq/Collections/Queryable", () => {
                SkaCahToa.Linq.Collections.IList<int> list = new SkaCahToa.Linq.Collections.List<int>();

                list.Add(14);
                list.Add(15);
                list.AddBack(16);
                list.Add(17);
                assert(list.count == 4);

                list.Where(new SkaCahToa.Linq.Expressions.ExpressionTree());
                assert(list.count == 4);
            });
        }
    }
}

