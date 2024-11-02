package com.android.systemui.volume;

import android.content.Context;
import com.samsung.systemui.splugins.volume.VolumeStar;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumeStarInteractor {
    public final Context context;
    public VolumeStarInteractor$start$1 listener;
    public VolumeStar volumeStar;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public VolumeStarInteractor(Context context) {
        this.context = context;
    }
}
