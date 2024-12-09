package com.sec.internal.helper;

import android.content.ContentValues;
import android.text.TextUtils;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class CollectionUtils {
    public static boolean isNullOrEmpty(String str) {
        return TextUtils.isEmpty(str);
    }

    public static boolean isNullOrEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean isNullOrEmpty(Map<?, ?> map) {
        return map == null || map.isEmpty();
    }

    public static boolean isNullOrEmpty(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    public static boolean isNullOrEmpty(ContentValues contentValues) {
        return contentValues == null || contentValues.size() == 0;
    }

    public static boolean getBooleanValue(ContentValues contentValues, String str, boolean z) {
        Boolean asBoolean;
        return (contentValues == null || !contentValues.containsKey(str) || (asBoolean = contentValues.getAsBoolean(str)) == null) ? z : asBoolean.booleanValue();
    }

    public static int getIntValue(ContentValues contentValues, String str, int i) {
        Integer asInteger;
        return (contentValues == null || !contentValues.containsKey(str) || (asInteger = contentValues.getAsInteger(str)) == null) ? i : asInteger.intValue();
    }

    public static String getStringValue(ContentValues contentValues, String str, String str2) {
        String asString;
        return (contentValues == null || !contentValues.containsKey(str) || (asString = contentValues.getAsString(str)) == null) ? str2 : asString;
    }

    public static class ArrayListMultimap<K, V> {
        private Map<K, Collection<V>> map = new HashMap();

        public Collection<V> get(Object obj) {
            Collection<V> collection = this.map.get(obj);
            return collection == null ? new ArrayList() : collection;
        }

        public void put(K k, V v) {
            Collection<V> collection = this.map.get(k);
            if (collection == null) {
                collection = new ArrayList<>();
            }
            collection.add(v);
            this.map.put(k, collection);
        }
    }

    public static <K, V> ArrayListMultimap<K, V> createArrayListMultimap() {
        return new ArrayListMultimap<>();
    }

    public static class Partition<T> extends AbstractList<List<T>> {
        final List<T> list;
        final int size;

        Partition(List<T> list, int i) {
            this.list = list;
            this.size = i;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<T> get(int i) {
            int i2 = this.size;
            int i3 = i * i2;
            return this.list.subList(i3, Math.min(i2 + i3, this.list.size()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.list.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            int size = this.list.size();
            int i = this.size;
            if (size % i == 0) {
                return size / i;
            }
            return (size / i) + 1;
        }
    }

    public static <T> Partition<T> partition(List<T> list, int i) {
        return new Partition<>(list, i);
    }
}
