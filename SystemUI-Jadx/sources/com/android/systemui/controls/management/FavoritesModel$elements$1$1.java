package com.android.systemui.controls.management;

import android.content.ComponentName;
import android.graphics.drawable.Icon;
import com.android.systemui.controls.CustomIconCache;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class FavoritesModel$elements$1$1 extends FunctionReferenceImpl implements Function2 {
    public FavoritesModel$elements$1$1(Object obj) {
        super(2, obj, CustomIconCache.class, "retrieve", "retrieve(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/graphics/drawable/Icon;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str = (String) obj2;
        CustomIconCache customIconCache = (CustomIconCache) this.receiver;
        customIconCache.getClass();
        Icon icon = null;
        if (Intrinsics.areEqual((ComponentName) obj, null)) {
            synchronized (customIconCache.cache) {
                icon = (Icon) ((LinkedHashMap) customIconCache.cache).get(str);
            }
        }
        return icon;
    }
}
