package com.android.systemui.qs.bar.soundcraft.viewmodel.base;

import androidx.lifecycle.MutableLiveData;
import kotlin.collections.EmptyList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class BaseSingleChoiceViewModel extends BaseViewModel {
    public final MutableLiveData icon;
    public final MutableLiveData showChooser;
    public final MutableLiveData title = new MutableLiveData("");
    public final MutableLiveData optionNames = new MutableLiveData(EmptyList.INSTANCE);
    public final MutableLiveData selectedOptionName = new MutableLiveData("");

    public BaseSingleChoiceViewModel() {
        new MutableLiveData(0);
        this.showChooser = new MutableLiveData(Boolean.FALSE);
        this.icon = new MutableLiveData(-1);
    }

    public MutableLiveData getIcon() {
        return this.icon;
    }

    public MutableLiveData getOptionNames() {
        return this.optionNames;
    }

    public MutableLiveData getTitle() {
        return this.title;
    }

    public abstract void onChooserDismiss();

    public abstract void onClick();

    public abstract void onItemSelected(int i);
}
