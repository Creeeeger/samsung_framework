package com.android.systemui.media.audiovisseekbar.config;

import com.android.systemui.media.audiovisseekbar.utils.DimensionUtilsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RendererConfig {
    public static final RendererConfig INSTANCE = new RendererConfig();

    private RendererConfig() {
    }

    public static float getRemainTrackBorderBound() {
        return DimensionUtilsKt.dpToPx(8.0f) / 2;
    }
}
