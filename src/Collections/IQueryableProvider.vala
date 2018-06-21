using SkaCahToa.Linq.Expressions;

namespace SkaCahToa.Linq.Collections {
    public interface IQueryableProvider: GLib.Object {
        public abstract void Where<T>(IQueryable<T> queryable, ExpressionTree expression);
    }
}
