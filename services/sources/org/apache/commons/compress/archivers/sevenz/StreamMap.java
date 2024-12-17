package org.apache.commons.compress.archivers.sevenz;

import android.hardware.broadcastradio.V2_0.AmFmBandRange$$ExternalSyntheticOutline0;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class StreamMap {
    public int[] fileFolderIndex;
    public int[] folderFirstFileIndex;
    public int[] folderFirstPackStreamIndex;
    public long[] packStreamOffsets;

    public final String toString() {
        StringBuilder sb = new StringBuilder("StreamMap with indices of ");
        sb.append(this.folderFirstPackStreamIndex.length);
        sb.append(" folders, offsets of ");
        sb.append(this.packStreamOffsets.length);
        sb.append(" packed streams, first files of ");
        sb.append(this.folderFirstFileIndex.length);
        sb.append(" folders and folder indices for ");
        return AmFmBandRange$$ExternalSyntheticOutline0.m(this.fileFolderIndex.length, sb, " files");
    }
}
