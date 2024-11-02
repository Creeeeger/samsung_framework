package com.android.systemui.controls.management;

import android.content.res.Resources;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FavoritesRenderer {
    public final Function1 favoriteFunction;
    public final Resources resources;

    public FavoritesRenderer(Resources resources, Function1 function1) {
        this.resources = resources;
        this.favoriteFunction = function1;
    }
}
