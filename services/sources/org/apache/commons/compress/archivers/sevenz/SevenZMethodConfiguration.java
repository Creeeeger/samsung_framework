package org.apache.commons.compress.archivers.sevenz;

import java.util.HashMap;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class SevenZMethodConfiguration {
    public final Object options;

    public SevenZMethodConfiguration(SevenZMethod sevenZMethod, Object obj) {
        this.options = obj;
        if (obj != null) {
            for (Class cls : ((CoderBase) ((HashMap) Coders.CODER_MAP).get(sevenZMethod)).acceptableOptions) {
                if (cls.isInstance(obj)) {
                    return;
                }
            }
            throw new IllegalArgumentException("The " + sevenZMethod + " method doesn't support options of type " + obj.getClass());
        }
    }
}
