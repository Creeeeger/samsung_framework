package com.android.systemui.edgelighting.utils;

import android.os.Bundle;
import android.os.Debug;
import android.os.Parcelable;
import com.samsung.android.edge.SemEdgeLightingInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SemEdgeLightingInfoUtils {
    public static final boolean DEBUG = Debug.semIsProductDev();
    public static final String EXTRA_KEY_SMALL_ICON = "smallIcon";

    public static int getInt(SemEdgeLightingInfo semEdgeLightingInfo, String str) {
        Bundle extra = semEdgeLightingInfo.getExtra();
        if (extra == null) {
            return 0;
        }
        return extra.getInt(str, 0);
    }

    public static String getText(SemEdgeLightingInfo semEdgeLightingInfo, String str) {
        CharSequence charSequence;
        Bundle extra = semEdgeLightingInfo.getExtra();
        if (extra != null && (charSequence = extra.getCharSequence(str)) != null) {
            return charSequence.toString().replaceAll("\\s", " ");
        }
        return null;
    }

    public static boolean isOnGoing(SemEdgeLightingInfo semEdgeLightingInfo) {
        if (semEdgeLightingInfo == null || (getInt(semEdgeLightingInfo, "flag") & 2) == 0) {
            return false;
        }
        return true;
    }

    public static String toString(SemEdgeLightingInfo semEdgeLightingInfo) {
        Parcelable parcelable;
        StringBuilder sb = new StringBuilder();
        sb.append("SemEdgeLightingInfo=" + semEdgeLightingInfo);
        if (DEBUG) {
            sb.append("flag=");
            sb.append(Integer.toHexString(getInt(semEdgeLightingInfo, "flag")));
            sb.append("ticker=");
            sb.append(getText(semEdgeLightingInfo, "tickerText"));
            sb.append("title=");
            sb.append(getText(semEdgeLightingInfo, "titleText"));
            sb.append("text=");
            sb.append(getText(semEdgeLightingInfo, "text"));
            sb.append("sub=");
            sb.append(getText(semEdgeLightingInfo, "subText"));
            sb.append(",cn=");
            sb.append(getText(semEdgeLightingInfo, "component"));
            sb.append(",cn time=");
            Bundle extra = semEdgeLightingInfo.getExtra();
            long j = 0;
            if (extra != null) {
                j = extra.getLong("component_time", 0L);
            }
            sb.append(j);
            sb.append(",intent=");
            Bundle extra2 = semEdgeLightingInfo.getExtra();
            if (extra2 == null || (parcelable = extra2.getParcelable("content_intent")) == null) {
                parcelable = null;
            }
            sb.append(parcelable);
        }
        return sb.toString();
    }
}
