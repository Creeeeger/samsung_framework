package org.apache.commons.compress.archivers.sevenz;

/* loaded from: classes2.dex */
public class SevenZMethodConfiguration {
    public final SevenZMethod method;
    public final Object options;

    public SevenZMethodConfiguration(SevenZMethod sevenZMethod, Object obj) {
        this.method = sevenZMethod;
        this.options = obj;
        if (obj == null || Coders.findByMethod(sevenZMethod).canAcceptOptions(obj)) {
            return;
        }
        throw new IllegalArgumentException("The " + sevenZMethod + " method doesn't support options of type " + obj.getClass());
    }
}
