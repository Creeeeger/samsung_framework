package com.samsung.systemui.splugins.multistar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface PluginDockedStackListener {
    void onAdjustedForImeChanged(boolean z, long j);

    void onDividerVisibilityChanged(boolean z);

    void onDockSideChanged(int i);

    void onDockedStackExistsChanged(boolean z);

    void onDockedStackMinimizedChanged(boolean z, long j, boolean z2);
}
