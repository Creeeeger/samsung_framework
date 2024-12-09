package com.sec.internal.ims.settings;

import android.content.Context;

/* loaded from: classes.dex */
public class GlobalSettingsRepoUsa extends GlobalSettingsRepoBase {
    @Override // com.sec.internal.ims.settings.GlobalSettingsRepoBase
    protected boolean needResetVolteAsDefault(int i, int i2, String str, String str2) {
        return i != i2;
    }

    public GlobalSettingsRepoUsa(Context context, int i) {
        super(context, i);
    }
}
