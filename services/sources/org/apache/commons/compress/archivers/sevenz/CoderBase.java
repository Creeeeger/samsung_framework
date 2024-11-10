package org.apache.commons.compress.archivers.sevenz;

import java.io.InputStream;

/* loaded from: classes2.dex */
public abstract class CoderBase {
    public static final byte[] NONE = new byte[0];
    public final Class[] acceptableOptions;

    public abstract InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr);

    public Object getOptionsFromCoder(Coder coder, InputStream inputStream) {
        return null;
    }

    public CoderBase(Class... clsArr) {
        this.acceptableOptions = clsArr;
    }

    public boolean canAcceptOptions(Object obj) {
        for (Class cls : this.acceptableOptions) {
            if (cls.isInstance(obj)) {
                return true;
            }
        }
        return false;
    }
}
