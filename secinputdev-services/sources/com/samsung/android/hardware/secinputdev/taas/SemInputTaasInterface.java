package com.samsung.android.hardware.secinputdev.taas;

import android.util.Log;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public interface SemInputTaasInterface {
    default void dump(PrintWriter pw) {
        Log.i("SemInputTaasInterface", "not support");
    }

    default void destroy() {
        Log.i("SemInputTaasInterface", "not support");
    }
}
