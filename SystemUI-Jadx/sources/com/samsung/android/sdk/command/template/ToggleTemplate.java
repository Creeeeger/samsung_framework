package com.samsung.android.sdk.command.template;

import android.os.Bundle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ToggleTemplate extends CommandTemplate {
    public final boolean mIsChecked;

    public ToggleTemplate(boolean z) {
        super("toggle");
        this.mIsChecked = z;
    }

    @Override // com.samsung.android.sdk.command.template.CommandTemplate
    public final Bundle getDataBundle() {
        Bundle dataBundle = super.getDataBundle();
        dataBundle.putBoolean("key_new_value", this.mIsChecked);
        return dataBundle;
    }

    @Override // com.samsung.android.sdk.command.template.CommandTemplate
    public final int getTemplateType() {
        return 2;
    }

    public ToggleTemplate(Bundle bundle) {
        super(bundle);
        this.mIsChecked = bundle.getBoolean("key_new_value");
    }
}
