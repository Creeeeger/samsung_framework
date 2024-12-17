package org.tukaani.xz;

import java.io.InputStream;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public abstract class FilterOptions implements Cloneable {
    public abstract InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache);
}
