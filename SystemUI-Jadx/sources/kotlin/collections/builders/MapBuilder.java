package kotlin.collections.builders;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class MapBuilder<K, V> implements Map<K, V>, Serializable, KMutableMap {
    public static final Companion Companion = new Companion(null);
    private MapBuilderEntries entriesView;
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;
    private K[] keysArray;
    private MapBuilderKeys keysView;
    private int length;
    private int maxProbeDistance;
    private int[] presenceArray;
    private int size;
    private V[] valuesArray;
    private MapBuilderValues valuesView;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class EntriesItr extends Itr implements Iterator, KMappedMarker {
        public EntriesItr(MapBuilder<Object, Object> mapBuilder) {
            super(mapBuilder);
        }

        @Override // java.util.Iterator
        public final Object next() {
            int i = this.index;
            MapBuilder mapBuilder = this.map;
            if (i < mapBuilder.length) {
                int i2 = this.index;
                this.index = i2 + 1;
                this.lastIndex = i2;
                EntryRef entryRef = new EntryRef(mapBuilder, i2);
                initNext$kotlin_stdlib();
                return entryRef;
            }
            throw new NoSuchElementException();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class EntryRef implements Map.Entry, KMappedMarker {
        public final int index;
        public final MapBuilder map;

        public EntryRef(MapBuilder<Object, Object> mapBuilder, int i) {
            this.map = mapBuilder;
            this.index = i;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (Intrinsics.areEqual(entry.getKey(), getKey()) && Intrinsics.areEqual(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.map.keysArray[this.index];
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            Object[] objArr = this.map.valuesArray;
            Intrinsics.checkNotNull(objArr);
            return objArr[this.index];
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            int i;
            Object key = getKey();
            int i2 = 0;
            if (key != null) {
                i = key.hashCode();
            } else {
                i = 0;
            }
            Object value = getValue();
            if (value != null) {
                i2 = value.hashCode();
            }
            return i ^ i2;
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            this.map.checkIsMutable$kotlin_stdlib();
            Object[] allocateValuesArray = this.map.allocateValuesArray();
            int i = this.index;
            Object obj2 = allocateValuesArray[i];
            allocateValuesArray[i] = obj;
            return obj2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public class Itr {
        public int index;
        public int lastIndex = -1;
        public final MapBuilder map;

        public Itr(MapBuilder<Object, Object> mapBuilder) {
            this.map = mapBuilder;
            initNext$kotlin_stdlib();
        }

        public final boolean hasNext() {
            if (this.index < this.map.length) {
                return true;
            }
            return false;
        }

        public final void initNext$kotlin_stdlib() {
            while (true) {
                int i = this.index;
                MapBuilder mapBuilder = this.map;
                if (i < mapBuilder.length) {
                    int[] iArr = mapBuilder.presenceArray;
                    int i2 = this.index;
                    if (iArr[i2] < 0) {
                        this.index = i2 + 1;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        }

        public final void remove() {
            boolean z;
            if (this.lastIndex != -1) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                MapBuilder mapBuilder = this.map;
                mapBuilder.checkIsMutable$kotlin_stdlib();
                mapBuilder.removeKeyAt(this.lastIndex);
                this.lastIndex = -1;
                return;
            }
            throw new IllegalStateException("Call next() before removing element from the iterator.".toString());
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class KeysItr extends Itr implements Iterator, KMappedMarker {
        public KeysItr(MapBuilder<Object, Object> mapBuilder) {
            super(mapBuilder);
        }

        @Override // java.util.Iterator
        public final Object next() {
            int i = this.index;
            MapBuilder mapBuilder = this.map;
            if (i < mapBuilder.length) {
                int i2 = this.index;
                this.index = i2 + 1;
                this.lastIndex = i2;
                Object obj = mapBuilder.keysArray[this.lastIndex];
                initNext$kotlin_stdlib();
                return obj;
            }
            throw new NoSuchElementException();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class ValuesItr extends Itr implements Iterator, KMappedMarker {
        public ValuesItr(MapBuilder<Object, Object> mapBuilder) {
            super(mapBuilder);
        }

        @Override // java.util.Iterator
        public final Object next() {
            int i = this.index;
            MapBuilder mapBuilder = this.map;
            if (i < mapBuilder.length) {
                int i2 = this.index;
                this.index = i2 + 1;
                this.lastIndex = i2;
                Object[] objArr = mapBuilder.valuesArray;
                Intrinsics.checkNotNull(objArr);
                Object obj = objArr[this.lastIndex];
                initNext$kotlin_stdlib();
                return obj;
            }
            throw new NoSuchElementException();
        }
    }

    private MapBuilder(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i, int i2) {
        this.keysArray = kArr;
        this.valuesArray = vArr;
        this.presenceArray = iArr;
        this.hashArray = iArr2;
        this.maxProbeDistance = i;
        this.length = i2;
        Companion companion = Companion;
        int length = iArr2.length;
        companion.getClass();
        this.hashShift = Integer.numberOfLeadingZeros(length) + 1;
    }

    private final Object writeReplace() {
        if (this.isReadOnly) {
            return new SerializedMap(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    public final int addKey$kotlin_stdlib(Object obj) {
        checkIsMutable$kotlin_stdlib();
        while (true) {
            int hash = hash(obj);
            int i = this.maxProbeDistance * 2;
            int length = this.hashArray.length / 2;
            if (i > length) {
                i = length;
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.hashArray;
                int i3 = iArr[hash];
                if (i3 <= 0) {
                    int i4 = this.length;
                    Object[] objArr = (K[]) this.keysArray;
                    if (i4 >= objArr.length) {
                        ensureExtraCapacity(1);
                    } else {
                        int i5 = i4 + 1;
                        this.length = i5;
                        objArr[i4] = obj;
                        this.presenceArray[i4] = hash;
                        iArr[hash] = i5;
                        this.size++;
                        if (i2 > this.maxProbeDistance) {
                            this.maxProbeDistance = i2;
                        }
                        return i4;
                    }
                } else {
                    if (Intrinsics.areEqual(this.keysArray[i3 - 1], obj)) {
                        return -i3;
                    }
                    i2++;
                    if (i2 > i) {
                        rehash(this.hashArray.length * 2);
                        break;
                    }
                    int i6 = hash - 1;
                    if (hash == 0) {
                        hash = this.hashArray.length - 1;
                    } else {
                        hash = i6;
                    }
                }
            }
        }
    }

    public final Object[] allocateValuesArray() {
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) ListBuilderKt.arrayOfUninitializedElements(this.keysArray.length);
        this.valuesArray = vArr2;
        return vArr2;
    }

    public final void build$1() {
        checkIsMutable$kotlin_stdlib();
        this.isReadOnly = true;
    }

    public final void checkIsMutable$kotlin_stdlib() {
        if (!this.isReadOnly) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final void clear() {
        checkIsMutable$kotlin_stdlib();
        IntProgressionIterator it = new IntRange(0, this.length - 1).iterator();
        while (it.hasNext) {
            int nextInt = it.nextInt();
            int[] iArr = this.presenceArray;
            int i = iArr[nextInt];
            if (i >= 0) {
                this.hashArray[i] = 0;
                iArr[nextInt] = -1;
            }
        }
        ListBuilderKt.resetRange(0, this.length, this.keysArray);
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            ListBuilderKt.resetRange(0, this.length, vArr);
        }
        this.size = 0;
        this.length = 0;
    }

    public final boolean containsAllEntries$kotlin_stdlib(Collection collection) {
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean containsEntry$kotlin_stdlib(Map.Entry entry) {
        int findKey = findKey(entry.getKey());
        if (findKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        return Intrinsics.areEqual(vArr[findKey], entry.getValue());
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (findKey(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        if (findValue(obj) >= 0) {
            return true;
        }
        return false;
    }

    public final void ensureExtraCapacity(int i) {
        V[] vArr;
        int i2 = this.length;
        int i3 = i + i2;
        if (i3 >= 0) {
            K[] kArr = this.keysArray;
            if (i3 > kArr.length) {
                int length = (kArr.length * 3) / 2;
                if (i3 <= length) {
                    i3 = length;
                }
                this.keysArray = (K[]) Arrays.copyOf(kArr, i3);
                V[] vArr2 = this.valuesArray;
                if (vArr2 != null) {
                    vArr = (V[]) Arrays.copyOf(vArr2, i3);
                } else {
                    vArr = null;
                }
                this.valuesArray = vArr;
                this.presenceArray = Arrays.copyOf(this.presenceArray, i3);
                Companion.getClass();
                if (i3 < 1) {
                    i3 = 1;
                }
                int highestOneBit = Integer.highestOneBit(i3 * 3);
                if (highestOneBit > this.hashArray.length) {
                    rehash(highestOneBit);
                    return;
                }
                return;
            }
            if ((i2 + i3) - this.size > kArr.length) {
                rehash(this.hashArray.length);
                return;
            }
            return;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.Map
    public final Set entrySet() {
        MapBuilderEntries mapBuilderEntries = this.entriesView;
        if (mapBuilderEntries == null) {
            MapBuilderEntries mapBuilderEntries2 = new MapBuilderEntries(this);
            this.entriesView = mapBuilderEntries2;
            return mapBuilderEntries2;
        }
        return mapBuilderEntries;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.size == map.size() && containsAllEntries$kotlin_stdlib(map.entrySet())) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public final int findKey(Object obj) {
        int hash = hash(obj);
        int i = this.maxProbeDistance;
        while (true) {
            int i2 = this.hashArray[hash];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (Intrinsics.areEqual(this.keysArray[i3], obj)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            int i4 = hash - 1;
            if (hash == 0) {
                hash = this.hashArray.length - 1;
            } else {
                hash = i4;
            }
        }
    }

    public final int findValue(Object obj) {
        int i = this.length;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.presenceArray[i] >= 0) {
                V[] vArr = this.valuesArray;
                Intrinsics.checkNotNull(vArr);
                if (Intrinsics.areEqual(vArr[i], obj)) {
                    return i;
                }
            }
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int findKey = findKey(obj);
        if (findKey < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        return vArr[findKey];
    }

    public final int hash(Object obj) {
        int i;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        return (i * (-1640531527)) >>> this.hashShift;
    }

    @Override // java.util.Map
    public final int hashCode() {
        int i;
        int i2;
        EntriesItr entriesItr = new EntriesItr(this);
        int i3 = 0;
        while (entriesItr.hasNext()) {
            int i4 = entriesItr.index;
            MapBuilder mapBuilder = entriesItr.map;
            if (i4 < mapBuilder.length) {
                int i5 = entriesItr.index;
                entriesItr.index = i5 + 1;
                entriesItr.lastIndex = i5;
                Object obj = mapBuilder.keysArray[entriesItr.lastIndex];
                if (obj != null) {
                    i = obj.hashCode();
                } else {
                    i = 0;
                }
                Object[] objArr = mapBuilder.valuesArray;
                Intrinsics.checkNotNull(objArr);
                Object obj2 = objArr[entriesItr.lastIndex];
                if (obj2 != null) {
                    i2 = obj2.hashCode();
                } else {
                    i2 = 0;
                }
                entriesItr.initNext$kotlin_stdlib();
                i3 += i ^ i2;
            } else {
                throw new NoSuchElementException();
            }
        }
        return i3;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        if (this.size == 0) {
            return true;
        }
        return false;
    }

    public final boolean isReadOnly$kotlin_stdlib() {
        return this.isReadOnly;
    }

    @Override // java.util.Map
    public final Set keySet() {
        MapBuilderKeys mapBuilderKeys = this.keysView;
        if (mapBuilderKeys == null) {
            MapBuilderKeys mapBuilderKeys2 = new MapBuilderKeys(this);
            this.keysView = mapBuilderKeys2;
            return mapBuilderKeys2;
        }
        return mapBuilderKeys;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        checkIsMutable$kotlin_stdlib();
        int addKey$kotlin_stdlib = addKey$kotlin_stdlib(obj);
        Object[] allocateValuesArray = allocateValuesArray();
        if (addKey$kotlin_stdlib < 0) {
            int i = (-addKey$kotlin_stdlib) - 1;
            Object obj3 = allocateValuesArray[i];
            allocateValuesArray[i] = obj2;
            return obj3;
        }
        allocateValuesArray[addKey$kotlin_stdlib] = obj2;
        return null;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        checkIsMutable$kotlin_stdlib();
        Set<Map.Entry<K, V>> entrySet = map.entrySet();
        if (!entrySet.isEmpty()) {
            ensureExtraCapacity(entrySet.size());
            for (Map.Entry<K, V> entry : entrySet) {
                int addKey$kotlin_stdlib = addKey$kotlin_stdlib(entry.getKey());
                Object[] allocateValuesArray = allocateValuesArray();
                if (addKey$kotlin_stdlib >= 0) {
                    allocateValuesArray[addKey$kotlin_stdlib] = entry.getValue();
                } else {
                    int i = (-addKey$kotlin_stdlib) - 1;
                    if (!Intrinsics.areEqual(entry.getValue(), allocateValuesArray[i])) {
                        allocateValuesArray[i] = entry.getValue();
                    }
                }
            }
        }
    }

    public final void rehash(int i) {
        boolean z;
        int i2;
        if (this.length > this.size) {
            V[] vArr = this.valuesArray;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i2 = this.length;
                if (i3 >= i2) {
                    break;
                }
                if (this.presenceArray[i3] >= 0) {
                    K[] kArr = this.keysArray;
                    kArr[i4] = kArr[i3];
                    if (vArr != null) {
                        vArr[i4] = vArr[i3];
                    }
                    i4++;
                }
                i3++;
            }
            ListBuilderKt.resetRange(i4, i2, this.keysArray);
            if (vArr != null) {
                ListBuilderKt.resetRange(i4, this.length, vArr);
            }
            this.length = i4;
        }
        int[] iArr = this.hashArray;
        if (i != iArr.length) {
            this.hashArray = new int[i];
            Companion.getClass();
            this.hashShift = Integer.numberOfLeadingZeros(i) + 1;
        } else {
            Arrays.fill(iArr, 0, iArr.length, 0);
        }
        int i5 = 0;
        while (i5 < this.length) {
            int i6 = i5 + 1;
            int hash = hash(this.keysArray[i5]);
            int i7 = this.maxProbeDistance;
            while (true) {
                int[] iArr2 = this.hashArray;
                if (iArr2[hash] == 0) {
                    iArr2[hash] = i6;
                    this.presenceArray[i5] = hash;
                    z = true;
                    break;
                }
                i7--;
                if (i7 < 0) {
                    z = false;
                    break;
                }
                int i8 = hash - 1;
                if (hash == 0) {
                    hash = iArr2.length - 1;
                } else {
                    hash = i8;
                }
            }
            if (z) {
                i5 = i6;
            } else {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        checkIsMutable$kotlin_stdlib();
        int findKey = findKey(obj);
        if (findKey < 0) {
            findKey = -1;
        } else {
            removeKeyAt(findKey);
        }
        if (findKey < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        V v = vArr[findKey];
        vArr[findKey] = null;
        return v;
    }

    public final boolean removeEntry$kotlin_stdlib(Map.Entry entry) {
        checkIsMutable$kotlin_stdlib();
        int findKey = findKey(entry.getKey());
        if (findKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        if (!Intrinsics.areEqual(vArr[findKey], entry.getValue())) {
            return false;
        }
        removeKeyAt(findKey);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[LOOP:0: B:5:0x0019->B:22:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void removeKeyAt(int r12) {
        /*
            r11 = this;
            K[] r0 = r11.keysArray
            r1 = 0
            r0[r12] = r1
            int[] r0 = r11.presenceArray
            r0 = r0[r12]
            int r1 = r11.maxProbeDistance
            int r1 = r1 * 2
            int[] r2 = r11.hashArray
            int r2 = r2.length
            int r2 = r2 / 2
            if (r1 <= r2) goto L15
            r1 = r2
        L15:
            r2 = 0
            r3 = r1
            r4 = r2
            r1 = r0
        L19:
            int r5 = r0 + (-1)
            r6 = -1
            if (r0 != 0) goto L23
            int[] r0 = r11.hashArray
            int r0 = r0.length
            int r0 = r0 + r6
            goto L24
        L23:
            r0 = r5
        L24:
            int r4 = r4 + 1
            int r5 = r11.maxProbeDistance
            if (r4 <= r5) goto L2f
            int[] r0 = r11.hashArray
            r0[r1] = r2
            goto L5e
        L2f:
            int[] r5 = r11.hashArray
            r7 = r5[r0]
            if (r7 != 0) goto L38
            r5[r1] = r2
            goto L5e
        L38:
            if (r7 >= 0) goto L3d
            r5[r1] = r6
            goto L55
        L3d:
            K[] r5 = r11.keysArray
            int r8 = r7 + (-1)
            r5 = r5[r8]
            int r5 = r11.hash(r5)
            int r5 = r5 - r0
            int[] r9 = r11.hashArray
            int r10 = r9.length
            int r10 = r10 + r6
            r5 = r5 & r10
            if (r5 < r4) goto L57
            r9[r1] = r7
            int[] r4 = r11.presenceArray
            r4[r8] = r1
        L55:
            r1 = r0
            r4 = r2
        L57:
            int r3 = r3 + r6
            if (r3 >= 0) goto L19
            int[] r0 = r11.hashArray
            r0[r1] = r6
        L5e:
            int[] r0 = r11.presenceArray
            r0[r12] = r6
            int r12 = r11.size
            int r12 = r12 + r6
            r11.size = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.builders.MapBuilder.removeKeyAt(int):void");
    }

    @Override // java.util.Map
    public final int size() {
        return this.size;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.size * 3) + 2);
        sb.append("{");
        EntriesItr entriesItr = new EntriesItr(this);
        int i = 0;
        while (entriesItr.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            int i2 = entriesItr.index;
            MapBuilder mapBuilder = entriesItr.map;
            if (i2 < mapBuilder.length) {
                int i3 = entriesItr.index;
                entriesItr.index = i3 + 1;
                entriesItr.lastIndex = i3;
                Object obj = mapBuilder.keysArray[entriesItr.lastIndex];
                if (Intrinsics.areEqual(obj, mapBuilder)) {
                    sb.append("(this Map)");
                } else {
                    sb.append(obj);
                }
                sb.append('=');
                Object[] objArr = mapBuilder.valuesArray;
                Intrinsics.checkNotNull(objArr);
                Object obj2 = objArr[entriesItr.lastIndex];
                if (Intrinsics.areEqual(obj2, mapBuilder)) {
                    sb.append("(this Map)");
                } else {
                    sb.append(obj2);
                }
                entriesItr.initNext$kotlin_stdlib();
                i++;
            } else {
                throw new NoSuchElementException();
            }
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        MapBuilderValues mapBuilderValues = this.valuesView;
        if (mapBuilderValues == null) {
            MapBuilderValues mapBuilderValues2 = new MapBuilderValues(this);
            this.valuesView = mapBuilderValues2;
            return mapBuilderValues2;
        }
        return mapBuilderValues;
    }

    public MapBuilder() {
        this(8);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public MapBuilder(int r8) {
        /*
            r7 = this;
            java.lang.Object[] r1 = kotlin.collections.builders.ListBuilderKt.arrayOfUninitializedElements(r8)
            r2 = 0
            int[] r3 = new int[r8]
            kotlin.collections.builders.MapBuilder$Companion r0 = kotlin.collections.builders.MapBuilder.Companion
            r0.getClass()
            r0 = 1
            if (r8 >= r0) goto L10
            r8 = r0
        L10:
            int r8 = r8 * 3
            int r8 = java.lang.Integer.highestOneBit(r8)
            int[] r4 = new int[r8]
            r5 = 2
            r6 = 0
            r0 = r7
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.builders.MapBuilder.<init>(int):void");
    }
}
