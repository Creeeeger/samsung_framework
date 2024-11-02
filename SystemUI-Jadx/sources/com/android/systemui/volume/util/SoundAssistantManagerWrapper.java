package com.android.systemui.volume.util;

import android.content.Context;
import com.samsung.android.media.SemSoundAssistantManager;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SoundAssistantManagerWrapper {
    public final SemSoundAssistantManager satMananger;

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

    public SoundAssistantManagerWrapper(Context context) {
        this.satMananger = new SemSoundAssistantManager(context);
    }
}
