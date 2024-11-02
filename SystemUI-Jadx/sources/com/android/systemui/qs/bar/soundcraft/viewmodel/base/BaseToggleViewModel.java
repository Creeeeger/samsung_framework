package com.android.systemui.qs.bar.soundcraft.viewmodel.base;

import androidx.lifecycle.MutableLiveData;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class BaseToggleViewModel extends BaseViewModel {
    public final MutableLiveData icon;
    public final MutableLiveData name = new MutableLiveData();
    public final MutableLiveData isSelected = new MutableLiveData();

    public BaseToggleViewModel() {
        new MutableLiveData();
        this.icon = new MutableLiveData();
    }

    public MutableLiveData getIcon() {
        return this.icon;
    }

    public abstract void onClick();
}
