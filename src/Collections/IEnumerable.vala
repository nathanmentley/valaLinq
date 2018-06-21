namespace SkaCahToa.Linq.Collections {
    public interface IEnumerable<T>: GLib.Object, ICollection<T> {
        public delegate void ForEachCallbackDelegateType(T item);
        public abstract void ForEach(ForEachCallbackDelegateType callback);
    }
}
