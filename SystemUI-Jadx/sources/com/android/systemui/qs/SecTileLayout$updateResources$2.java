package com.android.systemui.qs;

import android.content.Context;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecTileLayout$updateResources$2 extends FunctionReferenceImpl implements Function2 {
    public static final SecTileLayout$updateResources$2 INSTANCE = new SecTileLayout$updateResources$2();

    public SecTileLayout$updateResources$2() {
        super(2, SecQSPanelResourcePicker.class, "getTileExpandedHeight", "getTileExpandedHeight(Landroid/content/Context;)I", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ((SecQSPanelResourcePicker) obj).getClass();
        return Integer.valueOf(SecQSPanelResourcePicker.getTileExpandedHeight((Context) obj2));
    }
}
