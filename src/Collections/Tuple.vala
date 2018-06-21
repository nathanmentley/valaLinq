namespace SkaCahToa.Linq.Collections {
    public class Tuple<Type1, Type2>: GLib.Object {
        private Type1 v1;
        private Type2 v2;

        public Tuple(Type1 _v1, Type2 _v2) {
            v1 = _v1;
            v2 = _v2;
        }

        public Type1 GetValue1() {
            return v1;
        }

        public Type2 GetValue2() {
            return v2;
        }
    }
}
