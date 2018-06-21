using Gee;

using SkaCahToa.Linq.Expressions;

namespace SkaCahToa.Linq.Collections {
    public class List<T>: GLib.Object, ICollection<T>, IEnumerable<T>, IQueryable<T>, IList<T> {
        private ArrayList<T> data;
        
        public List() {
            _provider = new ListQueryableProvider();
            data = new ArrayList<T>();
        }


        //IList
        public void Add(T value) {
            data.insert(0, value);
        }

        public void AddBack(T value) {
            data.insert(data.size, value);
        }

        public T GetFront() {
            return data.get(0);
        }

        public void Remove(T value) {
            data.remove_at(data.index_of(value));
        }

        public bool Contains(T value) {
            return data.contains(value);
        }

        public void Clear() {
            data.clear();
        }

        
        //IQueryable
        private IQueryableProvider _provider;
        protected IQueryableProvider provider {
            get {
                return _provider;
            }
        }
        
        public IQueryable<T> Where(ExpressionTree expression) {
            provider.Where(this, expression);
            return this;
        }


        //IEnumerable
        public delegate void ForEachCallbackDelegateType(T item);
        public void ForEach(ForEachCallbackDelegateType callback) {
            //data.foreach((x) => { callback(x); });
        }
        
        
        //ICollection
        public int count {
            get { return data.size; }
        }
    }
}
