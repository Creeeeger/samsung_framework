package com.android.systemui.shade;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.android.keyguard.KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.DisplayLifecycle;
import java.util.function.BooleanSupplier;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecPanelFoldHelper {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final BooleanSupplier qsExpandedSupplier;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public SecPanelFoldHelper(BooleanSupplier booleanSupplier) {
        this.qsExpandedSupplier = booleanSupplier;
        new DisplayLifecycle.Observer() { // from class: com.android.systemui.shade.SecPanelFoldHelper$displayLifecycleObserver$1
            public int isFolderOpened = -1;

            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public final void onFolderStateChanged(boolean z) {
                String str;
                KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("onFolderStateChanged newFolderOpenState = ", z ? 1 : 0, ", isFolderOpened = ", z, "SecPanelFoldHelper");
                if (this.isFolderOpened == z) {
                    return;
                }
                this.isFolderOpened = z ? 1 : 0;
                if (z) {
                    if (!z) {
                        str = "FOLD_UNKNOWN";
                    } else {
                        str = "FOLD_OPEN";
                    }
                } else {
                    str = "FOLD_CLOSE";
                }
                int i = SecPanelFoldHelper.$r8$clinit;
                SecPanelFoldHelper secPanelFoldHelper = SecPanelFoldHelper.this;
                secPanelFoldHelper.getClass();
                Log.d("SecPanelFoldHelper", "onFolderStateChanged(" + str + ") in KeyguardShowing:null, QsExpanded:" + secPanelFoldHelper.qsExpandedSupplier.getAsBoolean() + ", PanelExpanded:null, Tracking:null");
            }
        };
        new BroadcastReceiver() { // from class: com.android.systemui.shade.SecPanelFoldHelper$screenRatioListener$1
            public final String INTENT_ACTION = "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE";

            {
                new IntentFilter("com.samsung.intent.action.SET_SCREEN_RATIO_VALUE");
            }

            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                if (Intrinsics.areEqual(this.INTENT_ACTION, intent.getAction())) {
                    KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0.m("onReceive(", this.INTENT_ACTION, ")", "SecPanelFoldHelper");
                    SecPanelFoldHelper secPanelFoldHelper = SecPanelFoldHelper.this;
                    int i = SecPanelFoldHelper.$r8$clinit;
                    secPanelFoldHelper.getClass();
                }
            }
        };
    }
}
