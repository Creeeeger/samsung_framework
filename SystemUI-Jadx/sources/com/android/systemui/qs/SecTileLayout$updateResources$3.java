package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Resources;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecTileLayout$updateResources$3 extends FunctionReferenceImpl implements Function2 {
    public static final SecTileLayout$updateResources$3 INSTANCE = new SecTileLayout$updateResources$3();

    public SecTileLayout$updateResources$3() {
        super(2, SecQSPanelResourcePicker.class, "getQsTileRow", "getQsTileRow(Landroid/content/Context;)I", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int integer;
        Resources resources = ((Context) obj2).getResources();
        if (QpRune.QUICK_TABLET) {
            integer = resources.getInteger(R.integer.sec_quick_settings_max_rows_tablet);
        } else {
            integer = resources.getInteger(R.integer.sec_quick_settings_max_rows);
        }
        return Integer.valueOf(integer);
    }
}
