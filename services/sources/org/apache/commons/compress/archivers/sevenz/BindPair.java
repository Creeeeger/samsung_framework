package org.apache.commons.compress.archivers.sevenz;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class BindPair {
    public long inIndex;
    public long outIndex;

    public final String toString() {
        return "BindPair binding input " + this.inIndex + " to output " + this.outIndex;
    }
}
