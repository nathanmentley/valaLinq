using GLib;

namespace SkaCahToa.Linq.Tests.Collections {
    public class ListTests {
        public ListTests() {
            Test.add_func("/SkaCahToa/Linq/Collections/List", () => {
                SkaCahToa.Linq.Collections.IList<int> list = new SkaCahToa.Linq.Collections.List<int>();

                assert(list.count == 0);

                list.Add(14);
                assert(list.count == 1);
                assert(list.GetFront() == 14);
                
                list.Add(15);
                assert(list.count == 2);
                assert(list.GetFront() == 15);

                list.AddBack(16);
                assert(list.count == 3);
                assert(list.GetFront() == 15);

                assert(list.Contains(16) == true);
                assert(list.Contains(17) == false);
                
                list.Remove(16);
                assert(list.Contains(16) == false);

                list.Clear();
                assert(list.count == 0);
            });
        }
    }
}
