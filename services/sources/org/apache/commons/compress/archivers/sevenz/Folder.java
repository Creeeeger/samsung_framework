package org.apache.commons.compress.archivers.sevenz;

import android.hardware.broadcastradio.V2_0.AmFmBandRange$$ExternalSyntheticOutline0;
import java.util.LinkedList;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class Folder {
    public BindPair[] bindPairs;
    public Coder[] coders;
    public long crc;
    public boolean hasCrc;
    public int numUnpackSubStreams;
    public long[] packedStreams;
    public long totalInputStreams;
    public long totalOutputStreams;
    public long[] unpackSizes;

    public final Iterable getOrderedCoders() {
        int i;
        BindPair[] bindPairArr;
        LinkedList linkedList = new LinkedList();
        long j = this.packedStreams[0];
        while (true) {
            for (int i2 = (int) j; i2 != -1; i2 = -1) {
                linkedList.addLast(this.coders[i2]);
                i = 0;
                while (true) {
                    bindPairArr = this.bindPairs;
                    if (i >= bindPairArr.length) {
                        i = -1;
                        break;
                    }
                    if (bindPairArr[i].outIndex == i2) {
                        break;
                    }
                    i++;
                }
                if (i != -1) {
                    break;
                }
            }
            return linkedList;
            j = bindPairArr[i].inIndex;
        }
    }

    public final long getUnpackSize() {
        long j = this.totalOutputStreams;
        if (j == 0) {
            return 0L;
        }
        for (int i = ((int) j) - 1; i >= 0; i--) {
            int i2 = 0;
            while (true) {
                BindPair[] bindPairArr = this.bindPairs;
                if (i2 >= bindPairArr.length) {
                    i2 = -1;
                    break;
                }
                if (bindPairArr[i2].outIndex == i) {
                    break;
                }
                i2++;
            }
            if (i2 < 0) {
                return this.unpackSizes[i];
            }
        }
        return 0L;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Folder with ");
        sb.append(this.coders.length);
        sb.append(" coders, ");
        sb.append(this.totalInputStreams);
        sb.append(" input streams, ");
        sb.append(this.totalOutputStreams);
        sb.append(" output streams, ");
        sb.append(this.bindPairs.length);
        sb.append(" bind pairs, ");
        sb.append(this.packedStreams.length);
        sb.append(" packed streams, ");
        sb.append(this.unpackSizes.length);
        sb.append(" unpack sizes, ");
        if (this.hasCrc) {
            str = "with CRC " + this.crc;
        } else {
            str = "without CRC";
        }
        sb.append(str);
        sb.append(" and ");
        return AmFmBandRange$$ExternalSyntheticOutline0.m(this.numUnpackSubStreams, sb, " unpack streams");
    }
}
