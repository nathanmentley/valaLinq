namespace SkaCahToa.Linq.Collections {
    public interface IList<T>: GLib.Object, IQueryable<T> {
        public abstract void Add(T value);
        public abstract void AddBack(T value);
        public abstract T GetFront();
        public abstract void Remove(T value);
        public abstract bool Contains(T value);
        public abstract void Clear();
    }
}
