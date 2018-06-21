using SkaCahToa.Linq.Expressions;

namespace SkaCahToa.Linq.Collections {
    public interface IQueryable<T>: GLib.Object, IEnumerable<T> {
        protected abstract IQueryableProvider provider { get; }

        public abstract IQueryable<T> Where(ExpressionTree expression);
    }
}
