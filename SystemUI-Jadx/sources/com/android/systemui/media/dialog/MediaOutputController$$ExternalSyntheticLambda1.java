package com.android.systemui.media.dialog;

import com.android.settingslib.media.MediaDevice;
import java.util.Optional;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MediaOutputController$$ExternalSyntheticLambda1 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        Optional optional = ((MediaItem) obj).mMediaDeviceOptional;
        if (optional.isPresent() && ((MediaDevice) optional.get()).isMutingExpectedDevice()) {
            return true;
        }
        return false;
    }
}
