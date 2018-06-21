using SkaCahToa.Linq.Expressions;

namespace SkaCahToa.Linq.Collections {
    public class ListQueryableProvider: GLib.Object, IQueryableProvider {
        public void Where<T>(IQueryable<T> queryable, ExpressionTree expression) {
        }
    }
}

