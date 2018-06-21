namespace SkaCahToa.Linq.Collections {
    public class Queue<T>: GLib.Object {
        private IList<T> data;
        public int count {
            get { return data.count; }
        }

        public Queue() {
            data = new List<T>();
        }

        public void Push(T value) {
            data.AddBack(value);
        }

        public T Pop() {
            T ret = data.GetFront();
            if(ret != null) {
                data.Remove(ret);
            }

            return ret;
        }

        public void Clear() {
            data.Clear();
        }
    }
}
