using Gee;

namespace SkaCahToa.Linq.Collections {
    public class Dictionary<TKey, TValue>: GLib.Object, ICollection<Tuple<TKey, TValue>>, IEnumerable<Tuple<TKey, TValue>>, IDictionary<TKey, TValue> {
        private HashMap<TKey, TValue> data;

        public Dictionary() {
            data = new HashMap<TKey, TValue>();
        }


        //IDictionary
        public void Set(TKey key, TValue value) {
            data.set(key, value);
        }

        public bool ContainsKey(TKey key) {
            return data.has_key(key);
        }

        public TValue Get(TKey key) {
            return data.get(key);
        }

        public void Remove(TKey key) {
            data.unset(key);
        }

        public void Clear() {
            data.clear();
        }


        //IEnumerable
        public delegate void ForEachCallbackDelegateType(Tuple<TKey, TValue> item);
        public void ForEach(ForEachCallbackDelegateType callback) {
        }


        //ICollection
        public int count {
            get { return data.size; }
        }
    }
}
