package com.android.systemui.controls.management.adapter;

import android.content.res.Resources;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CustomFavoritesRenderer {
    public final Function1 favoriteFunction;
    public final Function1 getActiveFlag;
    public final Resources resources;
    public final Function2 setActiveFlag;
    public final Function2 setActivePanelFlag;

    public CustomFavoritesRenderer(Resources resources, Function1 function1, Function1 function12, Function2 function2, Function2 function22) {
        this.resources = resources;
        this.favoriteFunction = function1;
        this.getActiveFlag = function12;
        this.setActiveFlag = function2;
        this.setActivePanelFlag = function22;
    }
}
