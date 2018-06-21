namespace SkaCahToa.Linq.Collections {
    public class Stack<T>: GLib.Object {
        private IList<T> data;
        public int count {
            get { return data.count; }
        }

        public Stack() {
            data = new List<T>();
        }

        public void Push(T value) {
            data.Add(value);
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
