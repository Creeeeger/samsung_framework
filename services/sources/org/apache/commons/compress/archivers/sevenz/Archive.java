package org.apache.commons.compress.archivers.sevenz;

import java.util.BitSet;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class Archive {
    public SevenZArchiveEntry[] files;
    public Folder[] folders;
    public long[] packCrcs;
    public BitSet packCrcsDefined;
    public long packPos;
    public long[] packSizes;
    public StreamMap streamMap;
    public SubStreamsInfo subStreamsInfo;

    public final String toString() {
        StringBuilder sb = new StringBuilder("Archive with packed streams starting at offset ");
        sb.append(this.packPos);
        sb.append(", ");
        long[] jArr = this.packSizes;
        sb.append(jArr == null ? "(null)" : String.valueOf(jArr.length));
        sb.append(" pack sizes, ");
        long[] jArr2 = this.packCrcs;
        sb.append(jArr2 == null ? "(null)" : String.valueOf(jArr2.length));
        sb.append(" CRCs, ");
        Folder[] folderArr = this.folders;
        sb.append(folderArr == null ? "(null)" : String.valueOf(folderArr.length));
        sb.append(" folders, ");
        SevenZArchiveEntry[] sevenZArchiveEntryArr = this.files;
        sb.append(sevenZArchiveEntryArr != null ? String.valueOf(sevenZArchiveEntryArr.length) : "(null)");
        sb.append(" files and ");
        sb.append(this.streamMap);
        return sb.toString();
    }
}
