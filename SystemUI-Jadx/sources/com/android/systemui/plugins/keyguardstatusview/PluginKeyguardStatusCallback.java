package com.android.systemui.plugins.keyguardstatusview;

import android.animation.Animator;
import android.app.PendingIntent;
import android.content.Intent;
import com.android.systemui.plugins.annotations.SupportVersionChecker;
import com.android.systemui.plugins.annotations.VersionCheck;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@SupportVersionChecker
/* loaded from: classes2.dex */
public interface PluginKeyguardStatusCallback {
    boolean isDozing();

    boolean isKeyguardState();

    void setFullScreenMode(boolean z, long j);

    @VersionCheck(version = 1019)
    void setFullScreenMode(boolean z, long j, Animator.AnimatorListener animatorListener);

    void setMusicShown(boolean z);

    void startActivity(PendingIntent pendingIntent);

    void startActivity(Intent intent, boolean z, int i);

    void userActivity();
}
