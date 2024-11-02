package com.android.systemui.keyguard.ui.viewmodel;

import com.android.systemui.keyguard.shared.model.SettingsClockSize;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel;
import kotlin.Pair;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class KeyguardPreviewSmartspaceViewModel$shouldHideSmartspace$2 extends AdaptedFunctionReference implements Function3 {
    public static final KeyguardPreviewSmartspaceViewModel$shouldHideSmartspace$2 INSTANCE = new KeyguardPreviewSmartspaceViewModel$shouldHideSmartspace$2();

    public KeyguardPreviewSmartspaceViewModel$shouldHideSmartspace$2() {
        super(3, Pair.class, "<init>", "<init>(Ljava/lang/Object;Ljava/lang/Object;)V", 4);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        KeyguardPreviewSmartspaceViewModel.Companion companion = KeyguardPreviewSmartspaceViewModel.Companion;
        return new Pair((SettingsClockSize) obj, (String) obj2);
    }
}
