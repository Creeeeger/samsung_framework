package org.apache.commons.compress.archivers.sevenz;

import java.util.BitSet;

/* loaded from: classes2.dex */
public class Archive {
    public SevenZArchiveEntry[] files;
    public Folder[] folders;
    public long[] packCrcs;
    public BitSet packCrcsDefined;
    public long packPos;
    public long[] packSizes;
    public StreamMap streamMap;
    public SubStreamsInfo subStreamsInfo;

    public String toString() {
        return "Archive with packed streams starting at offset " + this.packPos + ", " + lengthOf(this.packSizes) + " pack sizes, " + lengthOf(this.packCrcs) + " CRCs, " + lengthOf(this.folders) + " folders, " + lengthOf(this.files) + " files and " + this.streamMap;
    }

    public static String lengthOf(long[] jArr) {
        return jArr == null ? "(null)" : String.valueOf(jArr.length);
    }

    public static String lengthOf(Object[] objArr) {
        return objArr == null ? "(null)" : String.valueOf(objArr.length);
    }
}
