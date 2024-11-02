package org.apache.commons.lang3.builder;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class IDKey {
    public final int id;
    public final Object value;

    public IDKey(Object obj) {
        this.id = System.identityHashCode(obj);
        this.value = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IDKey)) {
            return false;
        }
        IDKey iDKey = (IDKey) obj;
        if (this.id != iDKey.id || this.value != iDKey.value) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.id;
    }
}
