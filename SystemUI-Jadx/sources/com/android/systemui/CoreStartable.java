package com.android.systemui;

import android.content.res.Configuration;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface CoreStartable extends Dumpable {
    void start();

    default void onConfigurationChanged(Configuration configuration) {
    }

    default void onTrimMemory(int i) {
    }

    default void onBootCompleted() {
    }

    @Override // com.android.systemui.Dumpable
    default void dump(PrintWriter printWriter, String[] strArr) {
    }
}
