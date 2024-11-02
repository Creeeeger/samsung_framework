package com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol;

import android.content.Context;
import android.util.Log;
import androidx.lifecycle.MutableLiveData;
import com.android.systemui.qs.bar.soundcraft.interfaces.wearable.WearableManager;
import com.android.systemui.qs.bar.soundcraft.model.ModelProvider;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoiseCancelingLevelViewModel extends BaseViewModel {
    public final MutableLiveData level = new MutableLiveData();
    public final ModelProvider modelProvider;
    public final WearableManager wearableManager;

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

    public NoiseCancelingLevelViewModel(Context context, ModelProvider modelProvider, WearableManager wearableManager) {
        this.modelProvider = modelProvider;
        this.wearableManager = wearableManager;
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel
    public final void notifyChange() {
        MutableLiveData mutableLiveData = this.level;
        int noiseCancelingLevel = this.modelProvider.budsInfo.getNoiseCancelingLevel();
        if (noiseCancelingLevel == null) {
            noiseCancelingLevel = 1;
        }
        mutableLiveData.setValue(noiseCancelingLevel);
        Log.d("SoundCraft.NoiseCancelingLevelViewModel", "notifyChange " + mutableLiveData.getValue());
    }
}
