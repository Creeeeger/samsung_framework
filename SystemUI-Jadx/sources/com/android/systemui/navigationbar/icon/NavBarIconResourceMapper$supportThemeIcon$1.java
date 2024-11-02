package com.android.systemui.navigationbar.icon;

import android.content.Context;
import android.provider.Settings;
import com.android.systemui.navigationbar.util.NavigationModeUtil;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarIconResourceMapper$supportThemeIcon$1 extends Lambda implements Function0 {
    final /* synthetic */ NavBarIconResourceMapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavBarIconResourceMapper$supportThemeIcon$1(NavBarIconResourceMapper navBarIconResourceMapper) {
        super(0);
        this.this$0 = navBarIconResourceMapper;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean z;
        Context context = this.this$0.context;
        NavigationModeUtil navigationModeUtil = NavigationModeUtil.INSTANCE;
        String string = Settings.System.getString(context.getContentResolver(), "current_sec_active_themepackage");
        if (string != null && string.length() > 0) {
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
