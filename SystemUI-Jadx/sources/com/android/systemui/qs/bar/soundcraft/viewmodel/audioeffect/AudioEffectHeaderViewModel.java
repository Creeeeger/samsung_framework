package com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect;

import android.content.Context;
import android.content.pm.PackageManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.lifecycle.MutableLiveData;
import com.android.systemui.qs.bar.soundcraft.model.ModelProvider;
import com.android.systemui.qs.bar.soundcraft.utils.IconExt;
import com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AudioEffectHeaderViewModel extends BaseViewModel {
    public final Context context;
    public final ModelProvider modelProvider;
    public final MutableLiveData icon = new MutableLiveData(null);
    public final MutableLiveData title = new MutableLiveData("");

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

    public AudioEffectHeaderViewModel(Context context, ModelProvider modelProvider) {
        this.context = context;
        this.modelProvider = modelProvider;
    }

    @Override // com.android.systemui.qs.bar.soundcraft.viewmodel.base.BaseViewModel
    public final void notifyChange() {
        Unit unit;
        ModelProvider modelProvider = this.modelProvider;
        String str = modelProvider.playingAudioPackageNameForAppSetting;
        MutableLiveData mutableLiveData = this.title;
        MutableLiveData mutableLiveData2 = this.icon;
        if (str != null) {
            IconExt iconExt = IconExt.INSTANCE;
            Context context = this.context;
            PackageManager packageManager = context.getPackageManager();
            iconExt.getClass();
            mutableLiveData2.setValue(packageManager.semGetApplicationIconForIconTray(str, 1));
            PackageManager packageManager2 = context.getPackageManager();
            iconExt.getClass();
            mutableLiveData.setValue(packageManager2.getApplicationLabel(packageManager2.getApplicationInfo(str, 0)).toString());
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            mutableLiveData2.setValue(null);
            mutableLiveData.setValue("Sound Effects");
        }
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("notifyChange : playingAppPackageName=", modelProvider.playingAudioPackageNameForAppSetting, "SoundCraft.AudioEffectHeaderViewModel");
    }

    public final String toString() {
        return "[title=" + this.title + "]";
    }
}
