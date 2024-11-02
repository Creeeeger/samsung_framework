package com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect;

import android.content.Context;
import android.util.Log;
import androidx.lifecycle.MutableLiveData;
import com.android.systemui.qs.bar.soundcraft.interfaces.audio.AudioPlaybackManager;
import com.android.systemui.qs.bar.soundcraft.model.BudsInfo;
import com.android.systemui.qs.bar.soundcraft.model.ModelProvider;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AudioEffectBoxViewModel extends BaseViewModel {
    public final ModelProvider modelProvider;
    public final MutableLiveData showEqualizer;
    public final MutableLiveData showSpatialAudio;
    public final MutableLiveData showVoiceBoost;
    public final MutableLiveData showVolumeNormalization;

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

    public AudioEffectBoxViewModel(Context context, ModelProvider modelProvider, AudioPlaybackManager audioPlaybackManager) {
        this.modelProvider = modelProvider;
        Boolean bool = Boolean.FALSE;
        this.showSpatialAudio = new MutableLiveData(bool);
        this.showEqualizer = new MutableLiveData(bool);
        this.showVoiceBoost = new MutableLiveData(bool);
        this.showVolumeNormalization = new MutableLiveData(bool);
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel
    public final void notifyChange() {
        boolean z;
        Boolean bool;
        boolean z2;
        ModelProvider modelProvider = this.modelProvider;
        Log.d("SoundCraft.AudioEffectBoxViewModel", "notifyChange : budsInfo=" + modelProvider.budsInfo);
        BudsInfo budsInfo = modelProvider.budsInfo;
        MutableLiveData mutableLiveData = this.showSpatialAudio;
        boolean z3 = false;
        if (budsInfo.getSpatialAudio() != null) {
            z = true;
        } else {
            z = false;
        }
        mutableLiveData.setValue(Boolean.valueOf(z));
        MutableLiveData mutableLiveData2 = this.showEqualizer;
        if (budsInfo.getEqualizerList() != null) {
            bool = Boolean.valueOf(!r2.isEmpty());
        } else {
            bool = null;
        }
        mutableLiveData2.setValue(bool);
        MutableLiveData mutableLiveData3 = this.showVoiceBoost;
        if (budsInfo.getVoiceBoost() != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        mutableLiveData3.setValue(Boolean.valueOf(z2));
        MutableLiveData mutableLiveData4 = this.showVolumeNormalization;
        if (budsInfo.getVolumeNormalization() != null) {
            z3 = true;
        }
        mutableLiveData4.setValue(Boolean.valueOf(z3));
    }

    public final String toString() {
        return "[showSpatialAudio=" + this.showSpatialAudio.getValue() + ", showEqualizer=" + this.showEqualizer.getValue() + ", showVoiceBoost=" + this.showVoiceBoost.getValue() + ", showVolumeNormalization=" + this.showVolumeNormalization.getValue() + "]";
    }
}
