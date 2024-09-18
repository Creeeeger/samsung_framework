package com.android.internal.accessibility.dialog;

import android.accessibilityservice.AccessibilityShortcutInfo;
import android.content.Context;
import com.android.internal.accessibility.dialog.TargetAdapter;
import com.android.internal.accessibility.util.ShortcutUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class AccessibilityActivityTarget extends AccessibilityTarget {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AccessibilityActivityTarget(Context context, int shortcutType, AccessibilityShortcutInfo shortcutInfo) {
        super(context, shortcutType, 3, ShortcutUtils.isShortcutContained(context, shortcutType, shortcutInfo.getComponentName().flattenToString()), shortcutInfo.getComponentName().flattenToString(), shortcutInfo.getActivityInfo().applicationInfo.uid, shortcutInfo.getActivityInfo().loadLabel(context.getPackageManager()), shortcutInfo.getActivityInfo().loadIcon(context.getPackageManager()), ShortcutUtils.convertToKey(ShortcutUtils.convertToUserType(shortcutType)));
    }

    @Override // com.android.internal.accessibility.dialog.AccessibilityTarget, com.android.internal.accessibility.dialog.TargetOperations
    public void updateActionItem(TargetAdapter.ViewHolder holder, int shortcutMenuMode) {
        super.updateActionItem(holder, shortcutMenuMode);
    }
}
