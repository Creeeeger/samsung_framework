package com.sec.internal.helper;

import android.annotation.SuppressLint;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class PhoneIdKeyMap<E> {
    private final E mDefaultValue;

    @SuppressLint({"UseSparseArrays"})
    private final Map<Integer, E> mMap = new HashMap();
    private final int mSize;

    public PhoneIdKeyMap(int i, E e) {
        this.mSize = i;
        this.mDefaultValue = e;
    }

    public void put(int i, E e) {
        if (i < 0 || i >= this.mSize) {
            return;
        }
        this.mMap.put(Integer.valueOf(i), e);
    }

    public E get(int i) {
        E e;
        E e2 = this.mMap.get(Integer.valueOf(i));
        return (e2 != null || (e = this.mDefaultValue) == null) ? e2 : e;
    }

    public E remove(int i) {
        return this.mMap.remove(Integer.valueOf(i));
    }

    public int getKey(E e, int i) {
        for (Map.Entry<Integer, E> entry : this.mMap.entrySet()) {
            if (Objects.equals(entry.getValue(), e)) {
                return entry.getKey().intValue();
            }
        }
        return i;
    }

    public void clear() {
        this.mMap.clear();
    }

    public Collection<E> values() {
        return this.mMap.values();
    }
}
