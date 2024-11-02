package com.android.systemui.hdmi;

import com.android.systemui.util.settings.SecureSettings;
import com.android.systemui.util.settings.SecureSettingsImpl;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HdmiCecSetMenuLanguageHelper {
    public final Executor mBackgroundExecutor;
    public final HashSet mDenylist;
    public Locale mLocale;
    public final SecureSettings mSecureSettings;

    public HdmiCecSetMenuLanguageHelper(Executor executor, SecureSettings secureSettings) {
        Collection asList;
        this.mBackgroundExecutor = executor;
        this.mSecureSettings = secureSettings;
        String stringForUser = ((SecureSettingsImpl) secureSettings).getStringForUser(-2, "hdmi_cec_set_menu_language_denylist");
        if (stringForUser == null) {
            asList = Collections.EMPTY_SET;
        } else {
            asList = Arrays.asList(stringForUser.split(","));
        }
        this.mDenylist = new HashSet(asList);
    }
}
