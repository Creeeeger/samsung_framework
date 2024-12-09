package com.google.android.gms.common.util;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzp {
    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
