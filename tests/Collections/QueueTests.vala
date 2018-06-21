using GLib;

namespace SkaCahToa.Linq.Tests.Collections {
    public class QueueTests {
        public QueueTests() {
            Test.add_func("/SkaCahToa/Linq/Collections/Queue", () => {
                var queue = new SkaCahToa.Linq.Collections.Queue<int>();

                assert(queue.count == 0);

                queue.Push(1);
                queue.Push(2);
                queue.Push(3);
                queue.Push(4);
                queue.Push(5);

                assert(queue.count == 5);
                assert(queue.Pop() == 1);
                assert(queue.Pop() == 2);
                assert(queue.count == 3);

                queue.Clear();

                assert(queue.count == 0);
            });
        }
    }
}
