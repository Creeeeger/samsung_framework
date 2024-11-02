package com.android.systemui.settings;

import android.content.Context;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface UserTracker extends UserContextProvider {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
        default void onUserChanging(int i) {
        }

        default void onUserChanging(int i, Context context, CountDownLatch countDownLatch) {
            onUserChanging(i);
            countDownLatch.countDown();
        }

        default void onProfilesChanged(List list) {
        }

        default void onUserChanged(int i, Context context) {
        }
    }
}
