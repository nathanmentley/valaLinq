namespace SkaCahToa.Linq.Collections {
    public interface IDictionary<TKey, TValue>: GLib.Object, IEnumerable<Tuple<TKey, TValue>> {
        public abstract void Set(TKey key, TValue value);
        public abstract bool ContainsKey(TKey key);
        public abstract TValue Get(TKey key);
        public abstract void Remove(TKey key);
        public abstract void Clear();
    }
}
