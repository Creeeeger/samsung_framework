package com.android.systemui.qs;

import android.database.ContentObserver;
import android.os.Handler;
import com.android.systemui.util.settings.SettingsProxy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class SettingObserver extends ContentObserver {
    public final int mDefaultValue;
    public boolean mListening;
    public int mObservedValue;
    public final String mSettingName;
    public final SettingsProxy mSettingsProxy;
    public int mUserId;

    public SettingObserver(SettingsProxy settingsProxy, Handler handler, String str, int i) {
        this(settingsProxy, handler, str, i, 0);
    }

    public final int getValue() {
        if (this.mListening) {
            return this.mObservedValue;
        }
        return this.mSettingsProxy.getIntForUser(this.mDefaultValue, this.mUserId, this.mSettingName);
    }

    public abstract void handleValueChanged(int i, boolean z);

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        boolean z2;
        int intForUser = this.mSettingsProxy.getIntForUser(this.mDefaultValue, this.mUserId, this.mSettingName);
        if (intForUser != this.mObservedValue) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.mObservedValue = intForUser;
        handleValueChanged(intForUser, z2);
    }

    public final void setListening(boolean z) {
        if (z == this.mListening) {
            return;
        }
        this.mListening = z;
        if (z) {
            this.mObservedValue = this.mSettingsProxy.getIntForUser(this.mDefaultValue, this.mUserId, this.mSettingName);
            SettingsProxy settingsProxy = this.mSettingsProxy;
            settingsProxy.registerContentObserverForUser(settingsProxy.getUriFor(this.mSettingName), false, (ContentObserver) this, this.mUserId);
            return;
        }
        this.mSettingsProxy.unregisterContentObserver(this);
        this.mObservedValue = this.mDefaultValue;
    }

    public final void setUserId(int i) {
        this.mUserId = i;
        if (this.mListening) {
            setListening(false);
            setListening(true);
        }
    }

    public final void setValue(int i) {
        this.mSettingsProxy.putIntForUser(i, this.mUserId, this.mSettingName);
    }

    public SettingObserver(SettingsProxy settingsProxy, Handler handler, String str, int i, int i2) {
        super(handler);
        this.mSettingsProxy = settingsProxy;
        this.mSettingName = str;
        this.mDefaultValue = i2;
        this.mObservedValue = i2;
        this.mUserId = i;
    }
}
