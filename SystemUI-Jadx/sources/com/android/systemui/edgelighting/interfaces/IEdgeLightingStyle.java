package com.android.systemui.edgelighting.interfaces;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.android.systemui.edgelighting.data.style.EdgeLightingStyleOption;
import com.android.systemui.edgelighting.settings.EdgeLightingStyleActivity;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface IEdgeLightingStyle {
    String getKey();

    Drawable getRoundedIcon(EdgeLightingStyleActivity edgeLightingStyleActivity);

    CharSequence getTitle(Context context);

    boolean isSupportEffect();

    boolean isSupportOption(EdgeLightingStyleOption edgeLightingStyleOption);
}
