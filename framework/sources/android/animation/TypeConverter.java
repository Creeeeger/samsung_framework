package android.animation;

/* loaded from: classes.dex */
public abstract class TypeConverter<T, V> {
    private Class<T> mFromClass;
    private Class<V> mToClass;

    public abstract V convert(T t);

    public TypeConverter(Class<T> fromClass, Class<V> toClass) {
        this.mFromClass = fromClass;
        this.mToClass = toClass;
    }

    public Class<V> getTargetType() {
        return this.mToClass;
    }

    public Class<T> getSourceType() {
        return this.mFromClass;
    }
}
