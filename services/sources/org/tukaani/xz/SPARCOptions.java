package org.tukaani.xz;

import java.io.InputStream;
import org.tukaani.xz.simple.SPARC;

/* loaded from: classes2.dex */
public class SPARCOptions extends BCJOptions {
    @Override // org.tukaani.xz.BCJOptions
    public /* bridge */ /* synthetic */ Object clone() {
        return super.clone();
    }

    public SPARCOptions() {
        super(4);
    }

    @Override // org.tukaani.xz.FilterOptions
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        return new SimpleInputStream(inputStream, new SPARC(false, this.startOffset));
    }
}
