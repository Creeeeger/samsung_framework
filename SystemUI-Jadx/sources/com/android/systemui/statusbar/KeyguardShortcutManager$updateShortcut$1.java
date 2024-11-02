package com.android.systemui.statusbar;

import android.content.ComponentName;
import android.os.Handler;
import android.util.Log;
import com.android.systemui.statusbar.KeyguardShortcutManager;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardShortcutManager$updateShortcut$1 implements Runnable {
    public final /* synthetic */ ComponentName $componentName;
    public final /* synthetic */ int $th;
    public final /* synthetic */ KeyguardShortcutManager this$0;

    public KeyguardShortcutManager$updateShortcut$1(ComponentName componentName, KeyguardShortcutManager keyguardShortcutManager, int i) {
        this.$componentName = componentName;
        this.this$0 = keyguardShortcutManager;
        this.$th = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            final KeyguardShortcutManager keyguardShortcutManager = this.this$0;
            final int i = this.$th;
            if (new Predicate() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$updateShortcut$1.1
                /* JADX WARN: Code restructure failed: missing block: B:17:0x008b, code lost:
                
                    if (r7 == false) goto L47;
                 */
                @Override // java.util.function.Predicate
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final boolean test(java.lang.Object r12) {
                    /*
                        Method dump skipped, instructions count: 469
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardShortcutManager$updateShortcut$1.AnonymousClass1.test(java.lang.Object):boolean");
                }
            }.test(this.$componentName)) {
                final KeyguardShortcutManager keyguardShortcutManager2 = this.this$0;
                Handler handler = keyguardShortcutManager2.mHandler;
                final int i2 = this.$th;
                handler.post(new Runnable() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$updateShortcut$1.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        KeyguardShortcutManager keyguardShortcutManager3 = KeyguardShortcutManager.this;
                        int i3 = i2;
                        KeyguardShortcutManager.Companion companion = KeyguardShortcutManager.Companion;
                        keyguardShortcutManager3.sendUpdateShortcutViewToCallback(i3);
                    }
                });
            } else {
                final KeyguardShortcutManager keyguardShortcutManager3 = this.this$0;
                Handler handler2 = keyguardShortcutManager3.mHandler;
                final int i3 = this.$th;
                handler2.post(new Runnable() { // from class: com.android.systemui.statusbar.KeyguardShortcutManager$updateShortcut$1.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        KeyguardShortcutManager.access$resetShortcut(KeyguardShortcutManager.this, i3);
                    }
                });
            }
        } catch (Exception e) {
            this.this$0.mSettingsHelper.resetShortcutValue();
            Log.e("KeyguardShortcutManager", "getPositionCorrectionRatio exception = " + e);
        }
    }
}
