package com.samsung.android.sdk.command.action;

import android.os.Bundle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class StringAction extends CommandAction {
    public final String mNewValue;

    public StringAction(String str) {
        this.mNewValue = str;
    }

    @Override // com.samsung.android.sdk.command.action.CommandAction
    public final int getActionType() {
        return 4;
    }

    @Override // com.samsung.android.sdk.command.action.CommandAction
    public final Bundle getDataBundle() {
        Bundle dataBundle = super.getDataBundle();
        dataBundle.putString("key_new_value", this.mNewValue);
        return dataBundle;
    }

    public StringAction(Bundle bundle) {
        super(bundle);
        this.mNewValue = bundle.getString("key_new_value");
    }
}
