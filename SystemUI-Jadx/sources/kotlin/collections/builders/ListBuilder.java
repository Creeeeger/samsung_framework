package kotlin.collections.builders;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.collections.AbstractList;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt__ArraysJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ListBuilder<E> extends AbstractMutableList implements RandomAccess, Serializable {
    private E[] array;
    private final ListBuilder<E> backing;
    private boolean isReadOnly;
    private int length;
    private int offset;
    private final ListBuilder<E> root;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Itr implements ListIterator, KMappedMarker {
        public int index;
        public int lastIndex = -1;
        public final ListBuilder list;

        public Itr(ListBuilder<Object> listBuilder, int i) {
            this.list = listBuilder;
            this.index = i;
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            ListBuilder listBuilder = this.list;
            int i = this.index;
            this.index = i + 1;
            listBuilder.add(i, obj);
            this.lastIndex = -1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            if (this.index < this.list.length) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            if (this.index > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            if (this.index < this.list.length) {
                int i = this.index;
                this.index = i + 1;
                this.lastIndex = i;
                return this.list.array[this.list.offset + this.lastIndex];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.index;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            int i = this.index;
            if (i > 0) {
                int i2 = i - 1;
                this.index = i2;
                this.lastIndex = i2;
                return this.list.array[this.list.offset + this.lastIndex];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.index - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            boolean z;
            int i = this.lastIndex;
            if (i != -1) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.list.removeAt(i);
                this.index = this.lastIndex;
                this.lastIndex = -1;
                return;
            }
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            boolean z;
            int i = this.lastIndex;
            if (i != -1) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.list.set(i, obj);
                return;
            }
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
        }
    }

    private ListBuilder(E[] eArr, int i, int i2, boolean z, ListBuilder<E> listBuilder, ListBuilder<E> listBuilder2) {
        this.array = eArr;
        this.offset = i;
        this.length = i2;
        this.isReadOnly = z;
        this.backing = listBuilder;
        this.root = listBuilder2;
    }

    private final Object writeReplace() {
        boolean z;
        ListBuilder<E> listBuilder;
        if (!this.isReadOnly && ((listBuilder = this.root) == null || !listBuilder.isReadOnly)) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            return new SerializedCollection(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        checkIsMutable();
        addAtInternal(this.offset + this.length, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        checkIsMutable();
        int size = collection.size();
        addAllInternal(this.offset + this.length, collection, size);
        return size > 0;
    }

    public final void addAllInternal(int i, Collection collection, int i2) {
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.addAllInternal(i, collection, i2);
            this.array = this.backing.array;
            this.length += i2;
        } else {
            insertAtInternal(i, i2);
            Iterator<E> it = collection.iterator();
            for (int i3 = 0; i3 < i2; i3++) {
                this.array[i + i3] = it.next();
            }
        }
    }

    public final void addAtInternal(int i, Object obj) {
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.addAtInternal(i, obj);
            this.array = this.backing.array;
            this.length++;
        } else {
            insertAtInternal(i, 1);
            ((E[]) this.array)[i] = obj;
        }
    }

    public final void build() {
        if (this.backing == null) {
            checkIsMutable();
            this.isReadOnly = true;
            return;
        }
        throw new IllegalStateException();
    }

    public final void checkIsMutable() {
        boolean z;
        ListBuilder<E> listBuilder;
        if (!this.isReadOnly && ((listBuilder = this.root) == null || !listBuilder.isReadOnly)) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        checkIsMutable();
        removeRangeInternal(this.offset, this.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r8 == r7) goto L32
            boolean r1 = r8 instanceof java.util.List
            r2 = 0
            if (r1 == 0) goto L31
            java.util.List r8 = (java.util.List) r8
            E[] r1 = r7.array
            int r3 = r7.offset
            int r7 = r7.length
            int r4 = r8.size()
            if (r7 == r4) goto L17
            goto L28
        L17:
            r4 = r2
        L18:
            if (r4 >= r7) goto L2d
            int r5 = r3 + r4
            r5 = r1[r5]
            java.lang.Object r6 = r8.get(r4)
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 != 0) goto L2a
        L28:
            r7 = r2
            goto L2e
        L2a:
            int r4 = r4 + 1
            goto L18
        L2d:
            r7 = r0
        L2e:
            if (r7 == 0) goto L31
            goto L32
        L31:
            r0 = r2
        L32:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.builders.ListBuilder.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        AbstractList.Companion companion = AbstractList.Companion;
        int i2 = this.length;
        companion.getClass();
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, i2);
        return this.array[this.offset + i];
    }

    @Override // kotlin.collections.AbstractMutableList
    public final int getSize() {
        return this.length;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i;
        E[] eArr = this.array;
        int i2 = this.offset;
        int i3 = this.length;
        int i4 = 1;
        for (int i5 = 0; i5 < i3; i5++) {
            E e = eArr[i2 + i5];
            int i6 = i4 * 31;
            if (e != null) {
                i = e.hashCode();
            } else {
                i = 0;
            }
            i4 = i6 + i;
        }
        return i4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i = 0; i < this.length; i++) {
            if (Intrinsics.areEqual(this.array[this.offset + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    public final void insertAtInternal(int i, int i2) {
        int i3 = this.length + i2;
        if (this.backing == null) {
            if (i3 >= 0) {
                E[] eArr = this.array;
                if (i3 > eArr.length) {
                    ArrayDeque.Companion companion = ArrayDeque.Companion;
                    int length = eArr.length;
                    companion.getClass();
                    int i4 = length + (length >> 1);
                    if (i4 - i3 < 0) {
                        i4 = i3;
                    }
                    if (i4 - 2147483639 > 0) {
                        if (i3 > 2147483639) {
                            i4 = Integer.MAX_VALUE;
                        } else {
                            i4 = 2147483639;
                        }
                    }
                    this.array = (E[]) Arrays.copyOf(this.array, i4);
                }
                E[] eArr2 = this.array;
                System.arraycopy(eArr2, i, eArr2, i + i2, (this.offset + this.length) - i);
                this.length += i2;
                return;
            }
            throw new OutOfMemoryError();
        }
        throw new IllegalStateException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        if (this.length == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new Itr(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i = this.length - 1; i >= 0; i--) {
            if (Intrinsics.areEqual(this.array[this.offset + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return new Itr(this, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        checkIsMutable();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            removeAt(indexOf);
        }
        if (indexOf >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        checkIsMutable();
        if (retainOrRemoveAllInternal(false, collection, this.offset, this.length) <= 0) {
            return false;
        }
        return true;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object removeAt(int i) {
        checkIsMutable();
        AbstractList.Companion companion = AbstractList.Companion;
        int i2 = this.length;
        companion.getClass();
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, i2);
        return removeAtInternal(this.offset + i);
    }

    public final Object removeAtInternal(int i) {
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            this.length--;
            return listBuilder.removeAtInternal(i);
        }
        E[] eArr = this.array;
        E e = eArr[i];
        int i2 = i + 1;
        System.arraycopy(eArr, i2, eArr, i, (this.offset + this.length) - i2);
        E[] eArr2 = this.array;
        int i3 = this.offset;
        int i4 = this.length;
        eArr2[(i3 + i4) - 1] = null;
        this.length = i4 - 1;
        return e;
    }

    public final void removeRangeInternal(int i, int i2) {
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.removeRangeInternal(i, i2);
        } else {
            E[] eArr = this.array;
            int i3 = i + i2;
            System.arraycopy(eArr, i3, eArr, i, this.length - i3);
            E[] eArr2 = this.array;
            int i4 = this.length;
            ListBuilderKt.resetRange(i4 - i2, i4, eArr2);
        }
        this.length -= i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        checkIsMutable();
        if (retainOrRemoveAllInternal(true, collection, this.offset, this.length) > 0) {
            return true;
        }
        return false;
    }

    public final int retainOrRemoveAllInternal(boolean z, Collection collection, int i, int i2) {
        ListBuilder<E> listBuilder = this.backing;
        if (listBuilder != null) {
            int retainOrRemoveAllInternal = listBuilder.retainOrRemoveAllInternal(z, collection, i, i2);
            this.length -= retainOrRemoveAllInternal;
            return retainOrRemoveAllInternal;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i + i3;
            if (collection.contains(this.array[i5]) == z) {
                E[] eArr = this.array;
                i3++;
                eArr[i4 + i] = eArr[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        E[] eArr2 = this.array;
        int i7 = i2 + i;
        System.arraycopy(eArr2, i7, eArr2, i + i4, this.length - i7);
        E[] eArr3 = this.array;
        int i8 = this.length;
        ListBuilderKt.resetRange(i8 - i6, i8, eArr3);
        this.length -= i6;
        return i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        checkIsMutable();
        AbstractList.Companion companion = AbstractList.Companion;
        int i2 = this.length;
        companion.getClass();
        AbstractList.Companion.checkElementIndex$kotlin_stdlib(i, i2);
        Object[] objArr = this.array;
        int i3 = this.offset + i;
        Object obj2 = objArr[i3];
        objArr[i3] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        ListBuilder<E> listBuilder;
        AbstractList.Companion companion = AbstractList.Companion;
        int i3 = this.length;
        companion.getClass();
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i, i2, i3);
        E[] eArr = this.array;
        int i4 = this.offset + i;
        int i5 = i2 - i;
        boolean z = this.isReadOnly;
        ListBuilder<E> listBuilder2 = this.root;
        if (listBuilder2 == null) {
            listBuilder = this;
        } else {
            listBuilder = listBuilder2;
        }
        return new ListBuilder(eArr, i4, i5, z, this, listBuilder);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        int length = objArr.length;
        int i = this.length;
        if (length < i) {
            E[] eArr = this.array;
            int i2 = this.offset;
            return Arrays.copyOfRange(eArr, i2, i + i2, objArr.getClass());
        }
        E[] eArr2 = this.array;
        int i3 = this.offset;
        System.arraycopy(eArr2, i3, objArr, 0, (i + i3) - i3);
        int length2 = objArr.length;
        int i4 = this.length;
        if (length2 > i4) {
            objArr[i4] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        E[] eArr = this.array;
        int i = this.offset;
        int i2 = this.length;
        StringBuilder sb = new StringBuilder((i2 * 3) + 2);
        sb.append("[");
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            sb.append(eArr[i + i3]);
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        AbstractList.Companion companion = AbstractList.Companion;
        int i2 = this.length;
        companion.getClass();
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, i2);
        return new Itr(this, i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        checkIsMutable();
        AbstractList.Companion companion = AbstractList.Companion;
        int i2 = this.length;
        companion.getClass();
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, i2);
        addAtInternal(this.offset + i, obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        checkIsMutable();
        AbstractList.Companion companion = AbstractList.Companion;
        int i2 = this.length;
        companion.getClass();
        AbstractList.Companion.checkPositionIndex$kotlin_stdlib(i, i2);
        int size = collection.size();
        addAllInternal(this.offset + i, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        E[] eArr = this.array;
        int i = this.offset;
        int i2 = this.length + i;
        ArraysKt__ArraysJVMKt.copyOfRangeToIndexCheck(i2, eArr.length);
        return Arrays.copyOfRange(eArr, i, i2);
    }

    public ListBuilder() {
        this(10);
    }

    public ListBuilder(int i) {
        this(ListBuilderKt.arrayOfUninitializedElements(i), 0, 0, false, null, null);
    }
}
