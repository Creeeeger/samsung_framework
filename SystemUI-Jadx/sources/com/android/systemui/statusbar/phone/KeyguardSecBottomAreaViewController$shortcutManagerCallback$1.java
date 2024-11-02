package com.android.systemui.statusbar.phone;

import com.android.systemui.statusbar.KeyguardShortcutManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardSecBottomAreaViewController$shortcutManagerCallback$1 implements KeyguardShortcutManager.ShortcutCallback {
    public final /* synthetic */ KeyguardSecBottomAreaViewController this$0;

    public KeyguardSecBottomAreaViewController$shortcutManagerCallback$1(KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController) {
        this.this$0 = keyguardSecBottomAreaViewController;
    }

    public final void updateShortcutView(final int i) {
        String str = KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY;
        final KeyguardSecBottomAreaViewController keyguardSecBottomAreaViewController = this.this$0;
        ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).post(new Runnable() { // from class: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1
            /* JADX WARN: Code restructure failed: missing block: B:24:0x00aa, code lost:
            
                if (r1 != false) goto L25;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void run() {
                /*
                    r6 = this;
                    int r0 = r1
                    java.lang.String r1 = "com.samsung.android.app.galaxyraw"
                    r2 = 0
                    r3 = 1
                    if (r0 != 0) goto L66
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r0 = r2
                    java.lang.String r4 = com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY
                    com.android.systemui.statusbar.KeyguardSecAffordanceView r0 = r0.getLeftView()
                    if (r0 == 0) goto Lc2
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r0 = r2
                    com.android.systemui.statusbar.KeyguardSecAffordanceView r4 = r0.getLeftView()
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r5 = r2
                    com.android.systemui.statusbar.KeyguardShortcutManager r5 = r5.shortcutManager
                    boolean r5 = r5.hasShortcut(r2)
                    r0.updateCustomShortcutIcon(r4, r2, r5)
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r0 = r2
                    com.android.systemui.statusbar.KeyguardSecAffordanceView r0 = r0.getLeftView()
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r4 = r2
                    com.android.systemui.statusbar.KeyguardShortcutManager r4 = r4.shortcutManager
                    boolean r4 = r4.isShortcutForCamera(r2)
                    if (r4 != 0) goto L50
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r4 = r2
                    com.android.systemui.statusbar.KeyguardShortcutManager r4 = r4.shortcutManager
                    com.android.systemui.statusbar.KeyguardShortcutManager$ShortcutData[] r4 = r4.mShortcuts
                    r4 = r4[r2]
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
                    android.content.ComponentName r4 = r4.mComponentName
                    if (r4 != 0) goto L44
                    r1 = r2
                    goto L4c
                L44:
                    java.lang.String r4 = r4.getPackageName()
                    boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r4)
                L4c:
                    if (r1 == 0) goto L4f
                    goto L50
                L4f:
                    r3 = r2
                L50:
                    r0.mShortcutForCamera = r3
                    r0.setRectangleColor()
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r0 = r2
                    com.android.systemui.statusbar.KeyguardSecAffordanceView r0 = r0.getLeftView()
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r6 = r2
                    com.android.systemui.statusbar.KeyguardShortcutManager r6 = r6.shortcutManager
                    boolean r6 = r6.isShortcutForPhone(r2)
                    r0.mIsShortcutForPhone = r6
                    goto Lc2
                L66:
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r0 = r2
                    java.lang.String r4 = com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController.KEY_HELP_TEXT_VISIBILITY
                    com.android.systemui.statusbar.KeyguardSecAffordanceView r0 = r0.getRightView()
                    if (r0 == 0) goto Lc2
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r0 = r2
                    com.android.systemui.statusbar.KeyguardSecAffordanceView r4 = r0.getRightView()
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r5 = r2
                    com.android.systemui.statusbar.KeyguardShortcutManager r5 = r5.shortcutManager
                    boolean r5 = r5.hasShortcut(r3)
                    r0.updateCustomShortcutIcon(r4, r3, r5)
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r0 = r2
                    com.android.systemui.statusbar.KeyguardSecAffordanceView r0 = r0.getRightView()
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r4 = r2
                    com.android.systemui.statusbar.KeyguardShortcutManager r4 = r4.shortcutManager
                    boolean r4 = r4.isShortcutForCamera(r3)
                    if (r4 != 0) goto Lac
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r4 = r2
                    com.android.systemui.statusbar.KeyguardShortcutManager r4 = r4.shortcutManager
                    com.android.systemui.statusbar.KeyguardShortcutManager$ShortcutData[] r4 = r4.mShortcuts
                    r4 = r4[r3]
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
                    android.content.ComponentName r4 = r4.mComponentName
                    if (r4 != 0) goto La2
                    r1 = r2
                    goto Laa
                La2:
                    java.lang.String r4 = r4.getPackageName()
                    boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r4)
                Laa:
                    if (r1 == 0) goto Lad
                Lac:
                    r2 = r3
                Lad:
                    r0.mShortcutForCamera = r2
                    r0.setRectangleColor()
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r0 = r2
                    com.android.systemui.statusbar.KeyguardSecAffordanceView r0 = r0.getRightView()
                    com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController r6 = r2
                    com.android.systemui.statusbar.KeyguardShortcutManager r6 = r6.shortcutManager
                    boolean r6 = r6.isShortcutForPhone(r3)
                    r0.mIsShortcutForPhone = r6
                Lc2:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.KeyguardSecBottomAreaViewController$shortcutManagerCallback$1$updateShortcutView$1.run():void");
            }
        });
        boolean z = keyguardSecBottomAreaViewController.isAllShortcutDisabled;
        boolean z2 = false;
        if (!keyguardSecBottomAreaViewController.shortcutManager.hasShortcut(0) && !keyguardSecBottomAreaViewController.shortcutManager.hasShortcut(1)) {
            z2 = true;
        }
        keyguardSecBottomAreaViewController.isAllShortcutDisabled = z2;
        if (z != keyguardSecBottomAreaViewController.isAllShortcutDisabled) {
            ((KeyguardSecBottomAreaView) keyguardSecBottomAreaViewController.mView).updateLayout();
        }
    }
}
