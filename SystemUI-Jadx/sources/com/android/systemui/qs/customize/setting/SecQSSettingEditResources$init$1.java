package com.android.systemui.qs.customize.setting;

import android.content.SharedPreferences;
import com.sec.ims.configuration.DATA;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
final /* synthetic */ class SecQSSettingEditResources$init$1 extends FunctionReferenceImpl implements Function2 {
    public SecQSSettingEditResources$init$1(Object obj) {
        super(2, obj, SecQSSettingEditResources.class, "updateSALog", "updateSALog(Ljava/lang/String;Z)V", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str;
        String str2 = (String) obj;
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        SecQSSettingEditResources secQSSettingEditResources = (SecQSSettingEditResources) this.receiver;
        secQSSettingEditResources.getClass();
        if (booleanValue) {
            str = "1";
        } else {
            str = DATA.DM_FIELD_INDEX.PCSCF_DOMAIN;
        }
        SharedPreferences.Editor editor = secQSSettingEditResources.editor;
        editor.putString(str2, str);
        editor.apply();
        return Unit.INSTANCE;
    }
}
