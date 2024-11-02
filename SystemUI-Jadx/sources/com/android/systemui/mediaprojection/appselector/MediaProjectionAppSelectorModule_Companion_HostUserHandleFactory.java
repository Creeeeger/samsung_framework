package com.android.systemui.mediaprojection.appselector;

import android.os.Bundle;
import android.os.UserHandle;
import com.android.systemui.media.MediaProjectionAppSelectorActivity;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaProjectionAppSelectorModule_Companion_HostUserHandleFactory implements Provider {
    public final Provider activityProvider;

    public MediaProjectionAppSelectorModule_Companion_HostUserHandleFactory(Provider provider) {
        this.activityProvider = provider;
    }

    public static UserHandle hostUserHandle(MediaProjectionAppSelectorActivity mediaProjectionAppSelectorActivity) {
        MediaProjectionAppSelectorModule.Companion.getClass();
        Bundle extras = mediaProjectionAppSelectorActivity.getIntent().getExtras();
        if (extras != null) {
            UserHandle userHandle = (UserHandle) extras.getParcelable("launched_from_user_handle");
            if (userHandle != null) {
                return userHandle;
            }
            throw new IllegalStateException("MediaProjectionAppSelectorActivity should be provided with launched_from_user_handle extra".toString());
        }
        throw new IllegalStateException("MediaProjectionAppSelectorActivity should be launched with extras".toString());
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return hostUserHandle((MediaProjectionAppSelectorActivity) this.activityProvider.get());
    }
}
