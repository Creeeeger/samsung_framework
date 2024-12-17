package org.apache.commons.compress.archivers.sevenz;

import java.io.InputStream;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public abstract class CoderBase {
    public final Class[] acceptableOptions;

    public CoderBase(Class... clsArr) {
        this.acceptableOptions = clsArr;
    }

    public abstract InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr);

    public Object getOptionsFromCoder(Coder coder) {
        return null;
    }
}
