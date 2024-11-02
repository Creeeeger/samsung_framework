package com.android.systemui.keyguard.ui.preview;

import com.android.systemui.keyguard.ui.preview.KeyguardRemotePreviewManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardRemotePreviewManager$preview$2 extends FunctionReferenceImpl implements Function1 {
    public KeyguardRemotePreviewManager$preview$2(Object obj) {
        super(1, obj, KeyguardRemotePreviewManager.class, "destroyObserver", "destroyObserver(Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager$PreviewLifecycleObserver;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        KeyguardRemotePreviewManager keyguardRemotePreviewManager = (KeyguardRemotePreviewManager) this.receiver;
        int i = KeyguardRemotePreviewManager.$r8$clinit;
        keyguardRemotePreviewManager.destroyObserver((KeyguardRemotePreviewManager.PreviewLifecycleObserver) obj);
        return Unit.INSTANCE;
    }
}
