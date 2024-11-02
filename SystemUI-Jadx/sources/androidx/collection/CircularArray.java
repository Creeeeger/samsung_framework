package androidx.collection;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CircularArray {
    public int capacityBitmask;
    public Object[] elements;
    public int head;
    public int tail;

    public CircularArray() {
        this(0, 1, null);
    }

    public final void doubleCapacity() {
        Object[] objArr = this.elements;
        int length = objArr.length;
        int i = this.head;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 >= 0) {
            Object[] objArr2 = new Object[i3];
            System.arraycopy(objArr, i, objArr2, 0, length - i);
            System.arraycopy(this.elements, 0, objArr2, i2, this.head - 0);
            this.elements = objArr2;
            this.head = 0;
            this.tail = length;
            this.capacityBitmask = i3 - 1;
            return;
        }
        throw new RuntimeException("Max array capacity exceeded");
    }

    public final void removeFromEnd(int i) {
        int i2;
        if (i <= 0) {
            return;
        }
        if (i <= size()) {
            int i3 = this.tail;
            if (i < i3) {
                i2 = i3 - i;
            } else {
                i2 = 0;
            }
            for (int i4 = i2; i4 < i3; i4++) {
                this.elements[i4] = null;
            }
            int i5 = this.tail;
            int i6 = i5 - i2;
            int i7 = i - i6;
            this.tail = i5 - i6;
            if (i7 > 0) {
                int length = this.elements.length;
                this.tail = length;
                int i8 = length - i7;
                for (int i9 = i8; i9 < length; i9++) {
                    this.elements[i9] = null;
                }
                this.tail = i8;
                return;
            }
            return;
        }
        int i10 = CollectionPlatformUtils.$r8$clinit;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final void removeFromStart(int i) {
        if (i <= 0) {
            return;
        }
        if (i <= size()) {
            int length = this.elements.length;
            int i2 = this.head;
            if (i < length - i2) {
                length = i2 + i;
            }
            while (i2 < length) {
                this.elements[i2] = null;
                i2++;
            }
            int i3 = this.head;
            int i4 = length - i3;
            int i5 = i - i4;
            this.head = this.capacityBitmask & (i3 + i4);
            if (i5 > 0) {
                for (int i6 = 0; i6 < i5; i6++) {
                    this.elements[i6] = null;
                }
                this.head = i5;
                return;
            }
            return;
        }
        int i7 = CollectionPlatformUtils.$r8$clinit;
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int size() {
        return this.capacityBitmask & (this.tail - this.head);
    }

    public CircularArray(int i) {
        if (!(i >= 1)) {
            throw new IllegalArgumentException("capacity must be >= 1".toString());
        }
        if (i <= 1073741824) {
            i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
            this.capacityBitmask = i - 1;
            this.elements = new Object[i];
            return;
        }
        throw new IllegalArgumentException("capacity must be <= 2^30".toString());
    }

    public /* synthetic */ CircularArray(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 8 : i);
    }
}
