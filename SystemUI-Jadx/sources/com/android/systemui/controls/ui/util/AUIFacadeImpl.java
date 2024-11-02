package com.android.systemui.controls.ui.util;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.SoundPool;
import android.util.Log;
import android.view.HapticFeedbackConstants;
import android.view.View;
import com.android.systemui.R;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AUIFacadeImpl implements AUIFacade {
    public final AudioManager audioManager;
    public final Context context;
    public SoundPool soundPool;
    public final List soundResources = CollectionsKt__CollectionsKt.listOf(new Pair(SoundId.GeneralOff, Integer.valueOf(R.raw.general_off)), new Pair(SoundId.GeneralOn, Integer.valueOf(R.raw.general_on)), new Pair(SoundId.LightOff, Integer.valueOf(R.raw.light_off)), new Pair(SoundId.LightOn, Integer.valueOf(R.raw.light_on)), new Pair(SoundId.AutomationError, Integer.valueOf(R.raw.automation_error)), new Pair(SoundId.AutomationSuccess, Integer.valueOf(R.raw.automation_success)), new Pair(SoundId.MediaPause, Integer.valueOf(R.raw.media_pause)), new Pair(SoundId.MediaPlayResume, Integer.valueOf(R.raw.media_play_resume)));
    public final Map soundIdMap = new LinkedHashMap();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    enum SoundId {
        GeneralOff,
        GeneralOn,
        LightOff,
        LightOn,
        AutomationError,
        AutomationSuccess,
        MediaPause,
        MediaPlayResume
    }

    static {
        new Companion(null);
    }

    public AUIFacadeImpl(Context context, AudioManager audioManager) {
        this.context = context;
        this.audioManager = audioManager;
    }

    public final void finalize() {
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            ((LinkedHashMap) this.soundIdMap).clear();
            soundPool.release();
        }
        this.soundPool = null;
    }

    public final void initialize() {
        if (this.soundPool == null) {
            SoundPool.Builder builder = new SoundPool.Builder();
            builder.setMaxStreams(SoundId.values().length);
            AudioAttributes.Builder builder2 = new AudioAttributes.Builder();
            builder2.semAddAudioTag("stv_touch_tone");
            builder2.setUsage(13);
            builder2.setContentType(4);
            builder.setAudioAttributes(builder2.build());
            SoundPool build = builder.build();
            for (Pair pair : this.soundResources) {
                this.soundIdMap.put(pair.getFirst(), Integer.valueOf(build.load(this.context, ((Number) pair.getSecond()).intValue(), 1)));
            }
            build.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.android.systemui.controls.ui.util.AUIFacadeImpl$initialize$1$1
                @Override // android.media.SoundPool.OnLoadCompleteListener
                public final void onLoadComplete(SoundPool soundPool, int i, int i2) {
                    AUIFacadeImpl.this.soundPool = soundPool;
                }
            });
        }
    }

    public final void playClick(int i, int i2, View view, boolean z) {
        SoundId soundId;
        Integer num;
        SoundId soundId2;
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            Map map = this.soundIdMap;
            Integer num2 = null;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i == 4) {
                                num2 = (Integer) ((LinkedHashMap) map).get(SoundId.MediaPlayResume);
                            }
                        } else {
                            num2 = (Integer) ((LinkedHashMap) map).get(SoundId.MediaPause);
                        }
                    } else {
                        num2 = (Integer) ((LinkedHashMap) map).get(SoundId.AutomationSuccess);
                    }
                } else {
                    num2 = (Integer) ((LinkedHashMap) map).get(SoundId.AutomationError);
                }
                if (num2 == null) {
                    num2 = Integer.valueOf(Log.w("AUIFacadeImpl", "getSoundId(): can't find customSound:" + i));
                }
            }
            if (num2 == null) {
                if (i2 == 13) {
                    if (z) {
                        soundId2 = SoundId.LightOn;
                    } else {
                        soundId2 = SoundId.LightOff;
                    }
                    num = (Integer) ((LinkedHashMap) map).get(soundId2);
                } else {
                    if (z) {
                        soundId = SoundId.GeneralOn;
                    } else {
                        soundId = SoundId.GeneralOff;
                    }
                    num = (Integer) ((LinkedHashMap) map).get(soundId);
                }
                num2 = num;
                Unit unit = Unit.INSTANCE;
            }
            if (num2 != null) {
                int intValue = num2.intValue();
                float semGetSituationVolume = this.audioManager.semGetSituationVolume(1, 0);
                soundPool.play(intValue, semGetSituationVolume, semGetSituationVolume, 0, 0, 1.0f);
            }
        }
        view.performHapticFeedback(HapticFeedbackConstants.semGetVibrationIndex(1));
    }
}
