package android.support.v4.media;

import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract /* synthetic */ class MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0 {
    public static String m(String str, int i) {
        return str + i;
    }

    public static StringBuilder m(String str, int i, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder m(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static void m(String str, String str2, String str3) {
        Log.d(str3, str + str2);
    }
}
