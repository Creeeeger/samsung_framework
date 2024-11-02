package com.android.systemui.accessibility.floatingmenu;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.internal.accessibility.dialog.AccessibilityTargetHelper;
import com.android.systemui.Prefs;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AccessibilityFloatingMenu implements IAccessibilityFloatingMenu {
    public final AnonymousClass1 mContentObserver;
    public final Context mContext;
    public final DockTooltipView mDockTooltipView;
    public final AnonymousClass4 mEnabledA11yServicesContentObserver;
    public final AnonymousClass3 mFadeOutContentObserver;
    public final boolean mIsHideHandle;
    public final AccessibilityFloatingMenuView mMenuView;
    public final AnonymousClass2 mSizeContentObserver;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.accessibility.floatingmenu.AccessibilityFloatingMenu$1] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.accessibility.floatingmenu.AccessibilityFloatingMenu$2] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.accessibility.floatingmenu.AccessibilityFloatingMenu$3] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.accessibility.floatingmenu.AccessibilityFloatingMenu$4] */
    public AccessibilityFloatingMenu(Context context, boolean z) {
        Handler handler = new Handler(Looper.getMainLooper());
        this.mContentObserver = new ContentObserver(handler) { // from class: com.android.systemui.accessibility.floatingmenu.AccessibilityFloatingMenu.1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z2) {
                AccessibilityFloatingMenu accessibilityFloatingMenu = AccessibilityFloatingMenu.this;
                accessibilityFloatingMenu.mMenuView.onTargetsChanged(AccessibilityTargetHelper.getTargets(accessibilityFloatingMenu.mContext, 0));
            }
        };
        this.mSizeContentObserver = new ContentObserver(handler) { // from class: com.android.systemui.accessibility.floatingmenu.AccessibilityFloatingMenu.2
            @Override // android.database.ContentObserver
            public final void onChange(boolean z2) {
                AccessibilityFloatingMenu accessibilityFloatingMenu = AccessibilityFloatingMenu.this;
                accessibilityFloatingMenu.mMenuView.setSizeType(Settings.Secure.getIntForUser(accessibilityFloatingMenu.mContext.getContentResolver(), "accessibility_floating_menu_size", 9, -2));
            }
        };
        this.mFadeOutContentObserver = new ContentObserver(handler) { // from class: com.android.systemui.accessibility.floatingmenu.AccessibilityFloatingMenu.3
            @Override // android.database.ContentObserver
            public final void onChange(boolean z2) {
                AccessibilityFloatingMenu accessibilityFloatingMenu = AccessibilityFloatingMenu.this;
                AccessibilityFloatingMenuView accessibilityFloatingMenuView = accessibilityFloatingMenu.mMenuView;
                boolean z3 = true;
                if (Settings.Secure.getInt(accessibilityFloatingMenu.mContext.getContentResolver(), "accessibility_floating_menu_fade_enabled", 1) != 1) {
                    z3 = false;
                }
                accessibilityFloatingMenuView.updateOpacityWith(Settings.Secure.getFloat(AccessibilityFloatingMenu.this.mContext.getContentResolver(), "accessibility_floating_menu_opacity", 0.55f), z3);
            }
        };
        this.mEnabledA11yServicesContentObserver = new ContentObserver(handler) { // from class: com.android.systemui.accessibility.floatingmenu.AccessibilityFloatingMenu.4
            @Override // android.database.ContentObserver
            public final void onChange(boolean z2) {
                AccessibilityFloatingMenu.this.mMenuView.mAdapter.notifyDataSetChanged();
            }
        };
        this.mContext = context;
        AccessibilityFloatingMenuView accessibilityFloatingMenuView = new AccessibilityFloatingMenuView(context, getPosition(context));
        this.mMenuView = accessibilityFloatingMenuView;
        this.mDockTooltipView = new DockTooltipView(context, accessibilityFloatingMenuView);
        this.mIsHideHandle = z;
    }

    public static Position getPosition(Context context) {
        String string = Prefs.getString(context, "AccessibilityFloatingMenuPosition", null);
        if (TextUtils.isEmpty(string)) {
            return new Position(1.0f, 0.77f);
        }
        TextUtils.SimpleStringSplitter simpleStringSplitter = Position.sStringCommaSplitter;
        simpleStringSplitter.setString(string);
        if (simpleStringSplitter.hasNext()) {
            return new Position(Float.parseFloat(simpleStringSplitter.next()), Float.parseFloat(simpleStringSplitter.next()));
        }
        throw new IllegalArgumentException(KeyAttributes$$ExternalSyntheticOutline0.m("Invalid Position string: ", string));
    }
}
