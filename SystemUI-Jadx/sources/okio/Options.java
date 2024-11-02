package okio;

import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Options extends AbstractList implements RandomAccess {
    public static final Companion Companion = new Companion(null);
    public final ByteString[] byteStrings;
    public final int[] trie;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void buildTrieRecursive(long j, Buffer buffer, int i, List list, int i2, int i3, List list2) {
            int i4;
            int i5;
            int i6;
            int i7;
            Buffer buffer2;
            long j2;
            int i8 = i;
            if (i2 < i3) {
                for (int i9 = i2; i9 < i3; i9++) {
                    if (!(((ByteString) ((ArrayList) list).get(i9)).getSize$okio() >= i8)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                ArrayList arrayList = (ArrayList) list;
                ByteString byteString = (ByteString) arrayList.get(i2);
                ByteString byteString2 = (ByteString) arrayList.get(i3 - 1);
                int i10 = -1;
                if (i8 == byteString.getSize$okio()) {
                    int intValue = ((Number) list2.get(i2)).intValue();
                    int i11 = i2 + 1;
                    ByteString byteString3 = (ByteString) arrayList.get(i11);
                    i4 = i11;
                    i5 = intValue;
                    byteString = byteString3;
                } else {
                    i4 = i2;
                    i5 = -1;
                }
                if (byteString.internalGet$okio(i8) != byteString2.internalGet$okio(i8)) {
                    int i12 = 1;
                    for (int i13 = i4 + 1; i13 < i3; i13++) {
                        if (((ByteString) arrayList.get(i13 - 1)).internalGet$okio(i8) != ((ByteString) arrayList.get(i13)).internalGet$okio(i8)) {
                            i12++;
                        }
                    }
                    long j3 = 4;
                    long j4 = (i12 * 2) + (buffer.size / j3) + j + 2;
                    buffer.writeInt(i12);
                    buffer.writeInt(i5);
                    for (int i14 = i4; i14 < i3; i14++) {
                        byte internalGet$okio = ((ByteString) arrayList.get(i14)).internalGet$okio(i8);
                        if (i14 == i4 || internalGet$okio != ((ByteString) arrayList.get(i14 - 1)).internalGet$okio(i8)) {
                            buffer.writeInt(internalGet$okio & 255);
                        }
                    }
                    Buffer buffer3 = new Buffer();
                    while (i4 < i3) {
                        byte internalGet$okio2 = ((ByteString) arrayList.get(i4)).internalGet$okio(i8);
                        int i15 = i4 + 1;
                        int i16 = i15;
                        while (true) {
                            if (i16 >= i3) {
                                i6 = i3;
                                break;
                            } else {
                                if (internalGet$okio2 != ((ByteString) arrayList.get(i16)).internalGet$okio(i8)) {
                                    i6 = i16;
                                    break;
                                }
                                i16++;
                            }
                        }
                        if (i15 == i6 && i8 + 1 == ((ByteString) arrayList.get(i4)).getSize$okio()) {
                            buffer.writeInt(((Number) list2.get(i4)).intValue());
                            i7 = i6;
                            buffer2 = buffer3;
                            j2 = j3;
                        } else {
                            buffer.writeInt(((int) ((buffer3.size / j3) + j4)) * i10);
                            i7 = i6;
                            buffer2 = buffer3;
                            j2 = j3;
                            buildTrieRecursive(j4, buffer3, i8 + 1, list, i4, i7, list2);
                        }
                        buffer3 = buffer2;
                        i4 = i7;
                        j3 = j2;
                        i10 = -1;
                    }
                    do {
                    } while (buffer3.read(buffer, 8192) != -1);
                    return;
                }
                int min = Math.min(byteString.getSize$okio(), byteString2.getSize$okio());
                int i17 = 0;
                for (int i18 = i8; i18 < min && byteString.internalGet$okio(i18) == byteString2.internalGet$okio(i18); i18++) {
                    i17++;
                }
                long j5 = 4;
                long j6 = (buffer.size / j5) + j + 2 + i17 + 1;
                buffer.writeInt(-i17);
                buffer.writeInt(i5);
                int i19 = i8 + i17;
                while (i8 < i19) {
                    buffer.writeInt(byteString.internalGet$okio(i8) & 255);
                    i8++;
                }
                if (i4 + 1 == i3) {
                    if (i19 == ((ByteString) arrayList.get(i4)).getSize$okio()) {
                        buffer.writeInt(((Number) list2.get(i4)).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
                Buffer buffer4 = new Buffer();
                buffer.writeInt(((int) ((buffer4.size / j5) + j6)) * (-1));
                buildTrieRecursive(j6, buffer4, i19, list, i4, i3, list2);
                do {
                } while (buffer4.read(buffer, 8192) != -1);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringArr, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0138, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final okio.Options of(okio.ByteString... r17) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Options.of(okio.ByteString[]):okio.Options");
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return super.contains((ByteString) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        return this.byteStrings[i];
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.byteStrings.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return super.indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return super.lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }
}
