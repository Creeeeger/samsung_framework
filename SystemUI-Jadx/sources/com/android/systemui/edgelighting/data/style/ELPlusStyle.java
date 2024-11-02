package com.android.systemui.edgelighting.data.style;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle;
import com.android.systemui.edgelighting.settings.EdgeLightingStyleActivity;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ELPlusStyle implements IEdgeLightingStyle {
    public final String mDBName;
    public final String mEffectName;
    public final Drawable mIcon;
    public final Uri mSpecialEffect;
    public final HashMap mSupportMap = new HashMap();

    public ELPlusStyle(Context context, String str, Drawable drawable, Uri uri, Uri uri2, String str2, String str3) {
        boolean z;
        String[] strArr;
        String[] split;
        this.mEffectName = str;
        this.mIcon = drawable;
        this.mSpecialEffect = uri;
        if (str2 != null) {
            z = true;
        } else {
            z = false;
        }
        if (z & (!str2.isEmpty())) {
            strArr = str2.split("!");
        } else {
            strArr = null;
        }
        if (strArr != null) {
            for (String str4 : strArr) {
                if (str4.contains("centerPosition")) {
                    str4.endsWith("true");
                } else if (str4.contains("edgeSpecialEffect")) {
                    str4.endsWith("true");
                } else if (str4.contains("edgeFrameEffect")) {
                    str4.endsWith("true");
                } else if (str4.contains("repeatCount")) {
                    String[] split2 = str4.split(":");
                    if (split2 != null) {
                        Integer.parseInt(split2[1]);
                    }
                } else if (str4.contains("specialSize")) {
                    String[] split3 = str4.split(":");
                    if (split3 != null && (split = split3[1].split("x")) != null) {
                        Integer.parseInt(split[0]);
                        Integer.parseInt(split[1]);
                    }
                } else if (str4.contains("startAfterToastFinished")) {
                    str4.endsWith("true");
                }
            }
        }
        EdgeLightingStyleOption edgeLightingStyleOption = EdgeLightingStyleOption.EFFECT;
        Boolean valueOf = Boolean.valueOf(str3.contains("EFFECT"));
        HashMap hashMap = this.mSupportMap;
        hashMap.put(edgeLightingStyleOption, valueOf);
        hashMap.put(EdgeLightingStyleOption.COLOR, Boolean.valueOf(str3.contains("COLOR")));
        hashMap.put(EdgeLightingStyleOption.WIDTH, Boolean.valueOf(str3.contains("WIDTH")));
        hashMap.put(EdgeLightingStyleOption.TRANSPARENCY, Boolean.valueOf(str3.contains("TRANSPARENCY")));
        hashMap.put(EdgeLightingStyleOption.DURATION, Boolean.valueOf(str3.contains("DURATION")));
        this.mDBName = "el+oneui3.0/" + str;
    }

    @Override // com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle
    public final String getKey() {
        return this.mDBName;
    }

    @Override // com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle
    public final Drawable getRoundedIcon(EdgeLightingStyleActivity edgeLightingStyleActivity) {
        return this.mIcon;
    }

    @Override // com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle
    public final CharSequence getTitle(Context context) {
        return this.mEffectName;
    }

    @Override // com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle
    public final boolean isSupportEffect() {
        return true;
    }

    @Override // com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle
    public final boolean isSupportOption(EdgeLightingStyleOption edgeLightingStyleOption) {
        return ((Boolean) this.mSupportMap.get(edgeLightingStyleOption)).booleanValue();
    }
}
