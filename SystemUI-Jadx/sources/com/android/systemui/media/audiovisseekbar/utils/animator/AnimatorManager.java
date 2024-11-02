package com.android.systemui.media.audiovisseekbar.utils.animator;

import java.util.concurrent.ConcurrentHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AnimatorManager {
    public static final AnimatorManager INSTANCE = new AnimatorManager();
    public static final ConcurrentHashMap animatorMap = new ConcurrentHashMap();

    private AnimatorManager() {
    }
}
