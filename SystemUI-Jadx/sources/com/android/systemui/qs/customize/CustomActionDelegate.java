package com.android.systemui.qs.customize;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.HashMap;
import java.util.function.Consumer;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CustomActionDelegate extends View.AccessibilityDelegate {
    public CustomActionManager mCustomActionManager;
    public final CustomActionView mCustomActionView;

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

    public CustomActionDelegate(CustomActionView customActionView) {
        this.mCustomActionView = customActionView;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        for (CustomActionId customActionId : ((SecCustomizeTileView) this.mCustomActionView).mIds) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(customActionId.getId(), customActionId.getName(view.getResources())));
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        for (CustomActionId customActionId : ((SecCustomizeTileView) this.mCustomActionView).mIds) {
            if (customActionId.getId() == i) {
                Log.d("CustomActionDelegate", "performAccessibilityAction host=" + view + ", action=" + i);
                CustomActionManager customActionManager = this.mCustomActionManager;
                if (customActionManager != null) {
                    HashMap hashMap = customActionManager.customActions;
                    Consumer consumer = (Consumer) hashMap.get(customActionId);
                    Log.d("CustomActionManager", "performAction actionId:" + customActionId + ", view=" + view + ", actions=" + hashMap);
                    if (consumer != null) {
                        consumer.accept(view);
                        return true;
                    }
                    return true;
                }
                return true;
            }
        }
        return super.performAccessibilityAction(view, i, bundle);
    }
}
