package com.android.systemui.controls.management;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import com.android.systemui.R;
import com.android.systemui.controls.management.ControlsModel;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlHolderAccessibilityDelegate extends AccessibilityDelegateCompat {
    public static final int MOVE_AFTER_ID;
    public static final int MOVE_BEFORE_ID;
    public boolean isFavorite;
    public final ControlsModel.MoveHelper moveHelper;
    public final Function0 positionRetriever;
    public final Function1 stateRetriever;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        MOVE_BEFORE_ID = R.id.accessibility_action_controls_move_before;
        MOVE_AFTER_ID = R.id.accessibility_action_controls_move_after;
    }

    public ControlHolderAccessibilityDelegate(Function1 function1, Function0 function0, ControlsModel.MoveHelper moveHelper) {
        this.stateRetriever = function1;
        this.positionRetriever = function0;
        this.moveHelper = moveHelper;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0097  */
    @Override // androidx.core.view.AccessibilityDelegateCompat
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onInitializeAccessibilityNodeInfo(android.view.View r10, androidx.core.view.accessibility.AccessibilityNodeInfoCompat r11) {
        /*
            r9 = this;
            android.view.View$AccessibilityDelegate r0 = r9.mOriginalDelegate
            android.view.accessibility.AccessibilityNodeInfo r1 = r11.mInfo
            r0.onInitializeAccessibilityNodeInfo(r10, r1)
            r0 = 0
            r1.setContextClickable(r0)
            boolean r2 = r9.isFavorite
            if (r2 == 0) goto L1b
            android.content.Context r2 = r10.getContext()
            r3 = 2131951706(0x7f13005a, float:1.9539834E38)
            java.lang.String r2 = r2.getString(r3)
            goto L26
        L1b:
            android.content.Context r2 = r10.getContext()
            r3 = 2131951705(0x7f130059, float:1.9539832E38)
            java.lang.String r2 = r2.getString(r3)
        L26:
            androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r3 = new androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat
            r4 = 16
            r3.<init>(r4, r2)
            r11.addAction(r3)
            r2 = 1
            com.android.systemui.controls.management.ControlsModel$MoveHelper r3 = r9.moveHelper
            kotlin.jvm.functions.Function0 r4 = r9.positionRetriever
            if (r3 == 0) goto L4e
            java.lang.Object r5 = r4.invoke()
            java.lang.Number r5 = (java.lang.Number) r5
            int r5 = r5.intValue()
            r6 = r3
            com.android.systemui.controls.management.FavoritesModel$moveHelper$1 r6 = (com.android.systemui.controls.management.FavoritesModel$moveHelper$1) r6
            if (r5 <= 0) goto L4e
            com.android.systemui.controls.management.FavoritesModel r6 = r6.this$0
            int r6 = r6.dividerPosition
            if (r5 >= r6) goto L4e
            r5 = r2
            goto L4f
        L4e:
            r5 = r0
        L4f:
            r6 = 2131951709(0x7f13005d, float:1.953984E38)
            if (r5 == 0) goto L7d
            java.lang.Object r5 = r4.invoke()
            java.lang.Number r5 = (java.lang.Number) r5
            int r5 = r5.intValue()
            int r5 = r5 + r2
            int r5 = r5 - r2
            androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r7 = new androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat
            android.content.Context r8 = r10.getContext()
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Object[] r5 = new java.lang.Object[]{r5}
            java.lang.String r5 = r8.getString(r6, r5)
            int r8 = com.android.systemui.controls.management.ControlHolderAccessibilityDelegate.MOVE_BEFORE_ID
            r7.<init>(r8, r5)
            r11.addAction(r7)
            r1.setContextClickable(r2)
        L7d:
            if (r3 == 0) goto L95
            java.lang.Object r5 = r4.invoke()
            java.lang.Number r5 = (java.lang.Number) r5
            int r5 = r5.intValue()
            com.android.systemui.controls.management.FavoritesModel$moveHelper$1 r3 = (com.android.systemui.controls.management.FavoritesModel$moveHelper$1) r3
            if (r5 < 0) goto L95
            com.android.systemui.controls.management.FavoritesModel r3 = r3.this$0
            int r3 = r3.dividerPosition
            int r3 = r3 - r2
            if (r5 >= r3) goto L95
            r0 = r2
        L95:
            if (r0 == 0) goto Lc0
            java.lang.Object r0 = r4.invoke()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            int r0 = r0 + r2
            int r0 = r0 + r2
            androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r3 = new androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat
            android.content.Context r10 = r10.getContext()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Object[] r0 = new java.lang.Object[]{r0}
            java.lang.String r10 = r10.getString(r6, r0)
            int r0 = com.android.systemui.controls.management.ControlHolderAccessibilityDelegate.MOVE_AFTER_ID
            r3.<init>(r0, r10)
            r11.addAction(r3)
            r1.setContextClickable(r2)
        Lc0:
            boolean r10 = r9.isFavorite
            java.lang.Boolean r10 = java.lang.Boolean.valueOf(r10)
            kotlin.jvm.functions.Function1 r9 = r9.stateRetriever
            java.lang.Object r9 = r9.invoke(r10)
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9
            r1.setStateDescription(r9)
            r9 = 0
            r11.setCollectionItemInfo(r9)
            java.lang.Class<android.widget.Switch> r9 = android.widget.Switch.class
            java.lang.String r9 = "android.widget.Switch"
            r11.setClassName(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.management.ControlHolderAccessibilityDelegate.onInitializeAccessibilityNodeInfo(android.view.View, androidx.core.view.accessibility.AccessibilityNodeInfoCompat):void");
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        boolean z = false;
        int i2 = MOVE_BEFORE_ID;
        Function0 function0 = this.positionRetriever;
        ControlsModel.MoveHelper moveHelper = this.moveHelper;
        if (i == i2) {
            if (moveHelper == null) {
                return true;
            }
            int intValue = ((Number) function0.invoke()).intValue();
            FavoritesModel$moveHelper$1 favoritesModel$moveHelper$1 = (FavoritesModel$moveHelper$1) moveHelper;
            if (intValue > 0 && intValue < favoritesModel$moveHelper$1.this$0.dividerPosition) {
                z = true;
            }
            if (!z) {
                Log.w("FavoritesModel", "Cannot move position " + intValue + " before");
                return true;
            }
            favoritesModel$moveHelper$1.this$0.onMoveItemInternal(intValue, intValue - 1);
            return true;
        }
        if (i != MOVE_AFTER_ID) {
            return false;
        }
        if (moveHelper == null) {
            return true;
        }
        int intValue2 = ((Number) function0.invoke()).intValue();
        FavoritesModel$moveHelper$1 favoritesModel$moveHelper$12 = (FavoritesModel$moveHelper$1) moveHelper;
        if (intValue2 >= 0 && intValue2 < favoritesModel$moveHelper$12.this$0.dividerPosition - 1) {
            z = true;
        }
        if (!z) {
            Log.w("FavoritesModel", "Cannot move position " + intValue2 + " after");
            return true;
        }
        favoritesModel$moveHelper$12.this$0.onMoveItemInternal(intValue2, intValue2 + 1);
        return true;
    }
}
