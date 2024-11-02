package com.android.systemui.util;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.IndentingPrintWriter;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class DumpUtilsKt {
    public static final IndentingPrintWriter asIndenting(PrintWriter printWriter) {
        IndentingPrintWriter indentingPrintWriter;
        if (printWriter instanceof IndentingPrintWriter) {
            indentingPrintWriter = (IndentingPrintWriter) printWriter;
        } else {
            indentingPrintWriter = null;
        }
        if (indentingPrintWriter == null) {
            return new IndentingPrintWriter(printWriter);
        }
        return indentingPrintWriter;
    }

    public static final void println(IndentingPrintWriter indentingPrintWriter, String str, Object obj) {
        indentingPrintWriter.append(str).append('=').println(obj);
    }

    public static final String visibilityString(int i) {
        if (i != 0) {
            if (i != 4) {
                if (i != 8) {
                    return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("unknown:", i);
                }
                return "gone";
            }
            return "invisible";
        }
        return "visible";
    }

    public static final void withIncreasedIndent(IndentingPrintWriter indentingPrintWriter, Runnable runnable) {
        indentingPrintWriter.increaseIndent();
        try {
            runnable.run();
        } finally {
            indentingPrintWriter.decreaseIndent();
        }
    }
}
