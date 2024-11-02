package com.samsung.android.sdk.command.template;

import android.os.Bundle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class UnformattedTemplate extends CommandTemplate {
    public final String mJSONString;

    public UnformattedTemplate(String str) {
        super("unformatted");
        this.mJSONString = str;
    }

    @Override // com.samsung.android.sdk.command.template.CommandTemplate
    public final Bundle getDataBundle() {
        Bundle dataBundle = super.getDataBundle();
        dataBundle.putString("key_new_value", this.mJSONString);
        return dataBundle;
    }

    @Override // com.samsung.android.sdk.command.template.CommandTemplate
    public final int getTemplateType() {
        return 6;
    }

    public UnformattedTemplate(Bundle bundle) {
        super(bundle);
        this.mJSONString = bundle.getString("key_new_value");
    }
}
