package com.android.systemui.searcle;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.android.internal.app.IVoiceInteractionManagerService;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.plugins.omni.AssistStateManager;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OmniAPI {
    public static AssistStateManager mAssistStateManager;
    public static IVoiceInteractionManagerService mVoiceInteractionManagerService;
    public static final Intent INTENT_ACTION_ASSIST = new Intent("android.intent.action.ASSIST");
    public static final SettingsHelper mSettingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum UnexecutableType {
        AVAILABLE,
        SERVICE_UNAVAILABLE,
        GOOGLE_APP_DISABLED,
        GOOGLE_IS_NOT_DIGITAL_ASSISTANT
    }

    public static boolean isGoogleDefaultAssistant(Context context) {
        String str;
        SettingsHelper settingsHelper = mSettingsHelper;
        settingsHelper.getClass();
        boolean z = BasicRune.SEARCLE;
        String str2 = null;
        if (z) {
            str = settingsHelper.mItemLists.get("assistant").getStringValue();
        } else {
            str = null;
        }
        if (!TextUtils.isEmpty(str)) {
            return AssistStateManager.OMNI_PACKAGE.equals(ComponentName.unflattenFromString(str).getPackageName());
        }
        settingsHelper.getClass();
        if (z) {
            str2 = settingsHelper.mItemLists.get("voice_interaction_service").getStringValue();
        }
        if (!TextUtils.isEmpty(str2)) {
            return AssistStateManager.OMNI_PACKAGE.equals(ComponentName.unflattenFromString(str2).getPackageName());
        }
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(INTENT_ACTION_ASSIST, 65536);
        if (resolveActivity != null) {
            return AssistStateManager.OMNI_PACKAGE.equals(resolveActivity.resolvePackageName);
        }
        return false;
    }
}
