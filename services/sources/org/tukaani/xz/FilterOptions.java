package org.tukaani.xz;

import java.io.InputStream;

/* loaded from: classes2.dex */
public abstract class FilterOptions implements Cloneable {
    public abstract InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache);

    public InputStream getInputStream(InputStream inputStream) {
        return getInputStream(inputStream, ArrayCache.getDefaultCache());
    }
}
