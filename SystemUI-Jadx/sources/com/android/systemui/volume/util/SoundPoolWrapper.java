package com.android.systemui.volume.util;

import android.content.Context;
import android.media.SoundPool;
import com.android.systemui.BasicRune;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SoundPoolWrapper {
    public static final String[] HOME_HUB_FILES;
    public static final String[] SOUND_THEME_FILES;
    public final Context context;
    public final HandlerWrapper handlerWrapper;
    public int soundID = -1;
    public final int[] soundIDs;
    public SoundPool soundPool;

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
        SOUND_THEME_FILES = new String[]{"system/media/audio/ui/TW_Volume_control.ogg", "system/media/audio/ui/TW_Volume_control_Calm.ogg", "system/media/audio/ui/TW_Volume_control_Fun.ogg", "system/media/audio/ui/TW_Volume_control_Retro.ogg"};
        HOME_HUB_FILES = new String[]{"system/media/audio/ui/HC_Volume_down.ogg", "system/media/audio/ui/HC_Volume_up.ogg", "system/media/audio/ui/HC_Volume_min.ogg", "system/media/audio/ui/HC_Volume_max.ogg"};
    }

    public SoundPoolWrapper(Context context, HandlerWrapper handlerWrapper) {
        int[] iArr;
        this.context = context;
        this.handlerWrapper = handlerWrapper;
        int i = 0;
        if (BasicRune.SUPPORT_SOUND_THEME) {
            int length = SOUND_THEME_FILES.length;
            iArr = new int[length];
            while (i < length) {
                iArr[i] = -1;
                i++;
            }
        } else if (BasicRune.VOLUME_HOME_IOT) {
            int length2 = HOME_HUB_FILES.length;
            iArr = new int[length2];
            while (i < length2) {
                iArr[i] = -1;
                i++;
            }
        } else {
            iArr = new int[0];
        }
        this.soundIDs = iArr;
    }

    public final void initSound(final int i) {
        if (i < -1 || i >= 20) {
            i = 3;
        }
        final SoundPool soundPool = this.soundPool;
        HandlerWrapper handlerWrapper = this.handlerWrapper;
        if (soundPool != null) {
            if (VolumePanelValues.isNone(i)) {
                if (!this.context.getResources().getBoolean(17891911)) {
                    i = 5;
                } else {
                    i = 2;
                }
            }
            handlerWrapper.postInBgThread(new Runnable() { // from class: com.android.systemui.volume.util.SoundPoolWrapper$initSound$1$1
                @Override // java.lang.Runnable
                public final void run() {
                    soundPool.semSetStreamType(i);
                }
            });
            return;
        }
        handlerWrapper.postInBgThread(new SoundPoolWrapper$makeSound$1(this));
    }
}
