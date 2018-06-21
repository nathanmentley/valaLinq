using GLib;

namespace SkaCahToa.Linq.Tests.Collections {
    public class StackTests {
        public StackTests() {
            Test.add_func("/SkaCahToa/Linq/Collections/Stack", () => {
                var stack = new SkaCahToa.Linq.Collections.Stack<int>();

                assert(stack.count == 0);

                stack.Push(1);
                stack.Push(2);
                stack.Push(3);
                stack.Push(4);
                stack.Push(5);

                assert(stack.count == 5);
                assert(stack.Pop() == 5);
                assert(stack.Pop() == 4);
                assert(stack.count == 3);

                stack.Clear();

                assert(stack.count == 0);
            });
        }
    }
}
