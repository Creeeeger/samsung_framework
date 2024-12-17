package org.tukaani.xz;

import java.io.InputStream;
import org.tukaani.xz.simple.ARMThumb;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class ARMThumbOptions extends BCJOptions {
    @Override // org.tukaani.xz.FilterOptions
    public final InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        ARMThumb aRMThumb = new ARMThumb();
        aRMThumb.pos = 4;
        return new SimpleInputStream(inputStream, aRMThumb);
    }
}
