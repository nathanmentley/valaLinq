using GLib;

using SkaCahToa.Linq.Collections;

namespace SkaCahToa.Linq.Tests.Collections {
    public class DictionaryTests {
        public DictionaryTests() {
            Test.add_func("/SkaCahToa/Linq/Collections/Dictionary", () => {
                SkaCahToa.Linq.Collections.IDictionary<int, int> dictionary = new SkaCahToa.Linq.Collections.Dictionary<int, int>();

                assert(dictionary.count == 0);

                dictionary.Set(1, 1);
                assert(dictionary.count == 1);

                dictionary.Set(1, 2);
                assert(dictionary.count == 1);
                
                dictionary.Set(2, 3);
                assert(dictionary.count == 2);

                assert(dictionary.ContainsKey(1) == true);
                assert(dictionary.ContainsKey(3) == false);

                assert(dictionary.Get(1) == 2);
                assert(dictionary.Get(2) == 3);

                dictionary.Remove(1);
                assert(dictionary.count == 1);

                dictionary.Clear();
                assert(dictionary.count == 0);
            });
        }
    }
}
