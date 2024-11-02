package com.samsung.android.desktopsystemui.sharedlib.system;

import android.graphics.Rect;
import com.samsung.android.desktopsystemui.sharedlib.recents.model.ThumbnailData;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface RecentsAnimationListener {
    void onAnimationCanceled(HashMap<Integer, ThumbnailData> hashMap);

    void onAnimationStart(RecentsAnimationControllerCompat recentsAnimationControllerCompat, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr2, Rect rect, Rect rect2);

    void onTasksAppeared(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr);
}
