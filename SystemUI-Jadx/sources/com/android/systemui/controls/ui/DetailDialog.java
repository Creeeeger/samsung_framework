package com.android.systemui.controls.ui;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.android.systemui.broadcast.BroadcastSender;
import com.android.systemui.controls.ui.util.SALogger;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.wm.shell.taskview.TaskView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DetailDialog extends Dialog {
    public final Context activityContext;
    public final ActivityStarter activityStarter;
    public final BroadcastSender broadcastSender;
    public int detailTaskId;
    public final Intent fillInIntent;
    public final KeyguardStateController keyguardStateController;
    public final PendingIntent pendingIntent;
    public final SALogger saLogger;
    public final DetailDialog$stateCallback$1 stateCallback;
    public final TaskView taskView;
    public final View taskViewContainer;
    public final float taskWidthPercentWidth;

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
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.systemui.controls.ui.DetailDialog$stateCallback$1, com.android.wm.shell.taskview.TaskView$Listener] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public DetailDialog(android.content.Context r3, com.android.systemui.broadcast.BroadcastSender r4, com.android.wm.shell.taskview.TaskView r5, android.app.PendingIntent r6, com.android.systemui.controls.ui.ControlViewHolder r7, com.android.systemui.statusbar.policy.KeyguardStateController r8, com.android.systemui.plugins.ActivityStarter r9, com.android.systemui.controls.ui.util.SALogger r10) {
        /*
            r2 = this;
            boolean r0 = com.android.systemui.BasicRune.CONTROLS_SAMSUNG_STYLE
            if (r0 == 0) goto L8
            r1 = 2132018403(0x7f1404e3, float:1.9675112E38)
            goto Lb
        L8:
            r1 = 2132018530(0x7f140562, float:1.967537E38)
        Lb:
            r2.<init>(r3, r1)
            r2.activityContext = r3
            r2.broadcastSender = r4
            r2.taskView = r5
            r2.pendingIntent = r6
            r2.keyguardStateController = r8
            r2.activityStarter = r9
            r2.saLogger = r10
            r4 = -1
            r2.detailTaskId = r4
            android.content.res.Resources r3 = r3.getResources()
            r4 = 2131165790(0x7f07025e, float:1.7945807E38)
            float r3 = r3.getFloat(r4)
            r2.taskWidthPercentWidth = r3
            android.content.Intent r3 = new android.content.Intent
            r3.<init>()
            java.lang.String r4 = "controls.DISPLAY_IN_PANEL"
            r6 = 1
            r3.putExtra(r4, r6)
            r4 = 524288(0x80000, float:7.34684E-40)
            r3.addFlags(r4)
            r4 = 134217728(0x8000000, float:3.85186E-34)
            r3.addFlags(r4)
            r2.fillInIntent = r3
            com.android.systemui.controls.ui.DetailDialog$stateCallback$1 r3 = new com.android.systemui.controls.ui.DetailDialog$stateCallback$1
            r3.<init>()
            r2.stateCallback = r3
            android.view.Window r4 = r2.getWindow()
            r6 = 32
            r4.addFlags(r6)
            android.view.Window r4 = r2.getWindow()
            r6 = 536870912(0x20000000, float:1.0842022E-19)
            r4.addPrivateFlags(r6)
            if (r0 == 0) goto L62
            r4 = 2131558544(0x7f0d0090, float:1.8742407E38)
            goto L65
        L62:
            r4 = 2131558551(0x7f0d0097, float:1.874242E38)
        L65:
            r2.setContentView(r4)
            r4 = 2131362475(0x7f0a02ab, float:1.8344732E38)
            android.view.View r4 = r2.requireViewById(r4)
            r2.taskViewContainer = r4
            r4 = 2131362477(0x7f0a02ad, float:1.8344736E38)
            android.view.View r4 = r2.requireViewById(r4)
            android.view.ViewGroup r4 = (android.view.ViewGroup) r4
            r4.addView(r5)
            r6 = 0
            r4.setAlpha(r6)
            r4 = 2131362472(0x7f0a02a8, float:1.8344726E38)
            android.view.View r4 = r2.requireViewById(r4)
            android.widget.ImageView r4 = (android.widget.ImageView) r4
            com.android.systemui.controls.ui.DetailDialog$2$1 r6 = new com.android.systemui.controls.ui.DetailDialog$2$1
            r6.<init>()
            r4.setOnClickListener(r6)
            r4 = 2131362474(0x7f0a02aa, float:1.834473E38)
            android.view.View r4 = r2.requireViewById(r4)
            com.android.systemui.controls.ui.DetailDialog$3$1 r6 = new com.android.systemui.controls.ui.DetailDialog$3$1
            r6.<init>()
            r4.setOnClickListener(r6)
            r4 = 2131362473(0x7f0a02a9, float:1.8344728E38)
            android.view.View r4 = r2.requireViewById(r4)
            android.widget.ImageView r4 = (android.widget.ImageView) r4
            com.android.systemui.controls.ui.DetailDialog$4$1 r6 = new com.android.systemui.controls.ui.DetailDialog$4$1
            r6.<init>()
            r4.setOnClickListener(r6)
            android.view.Window r4 = r2.getWindow()
            android.view.View r4 = r4.getDecorView()
            com.android.systemui.controls.ui.DetailDialog$5 r6 = new android.view.View.OnApplyWindowInsetsListener() { // from class: com.android.systemui.controls.ui.DetailDialog.5
                static {
                    /*
                        com.android.systemui.controls.ui.DetailDialog$5 r0 = new com.android.systemui.controls.ui.DetailDialog$5
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.android.systemui.controls.ui.DetailDialog$5) com.android.systemui.controls.ui.DetailDialog.5.INSTANCE com.android.systemui.controls.ui.DetailDialog$5
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.ui.DetailDialog.AnonymousClass5.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.ui.DetailDialog.AnonymousClass5.<init>():void");
                }

                @Override // android.view.View.OnApplyWindowInsetsListener
                public final android.view.WindowInsets onApplyWindowInsets(android.view.View r3, android.view.WindowInsets r4) {
                    /*
                        r2 = this;
                        boolean r2 = com.android.systemui.BasicRune.CONTROLS_SAMSUNG_STYLE
                        if (r2 == 0) goto L1d
                        int r2 = android.view.WindowInsets.Type.systemBars()
                        int r0 = android.view.WindowInsets.Type.displayCutout()
                        r2 = r2 | r0
                        android.graphics.Insets r2 = r4.getInsetsIgnoringVisibility(r2)
                        int r4 = r2.left
                        int r0 = r2.top
                        int r1 = r2.right
                        int r2 = r2.bottom
                        r3.setPadding(r4, r0, r1, r2)
                        goto L34
                    L1d:
                        int r2 = r3.getPaddingLeft()
                        int r0 = r3.getPaddingRight()
                        int r1 = android.view.WindowInsets.Type.systemBars()
                        android.graphics.Insets r4 = r4.getInsets(r1)
                        int r1 = r4.top
                        int r4 = r4.bottom
                        r3.setPadding(r2, r1, r0, r4)
                    L34:
                        android.view.WindowInsets r2 = android.view.WindowInsets.CONSUMED
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.ui.DetailDialog.AnonymousClass5.onApplyWindowInsets(android.view.View, android.view.WindowInsets):android.view.WindowInsets");
                }
            }
            r4.setOnApplyWindowInsetsListener(r6)
            android.content.Context r4 = r2.getContext()
            android.content.res.Resources r4 = r4.getResources()
            boolean r4 = com.android.internal.policy.ScreenDecorationsUtils.supportsRoundedCornersOnWindows(r4)
            if (r4 == 0) goto Le0
            android.content.Context r2 = r2.getContext()
            android.content.res.Resources r2 = r2.getResources()
            r4 = 2131165732(0x7f070224, float:1.794569E38)
            int r2 = r2.getDimensionPixelSize(r4)
            float r2 = (float) r2
            r5.setCornerRadius(r2)
        Le0:
            com.android.systemui.util.concurrency.DelayableExecutor r2 = r7.uiExecutor
            r5.setListener(r2, r3)
            boolean r2 = com.android.systemui.BasicRune.CONTROLS_SAMSUNG_ANALYTICS
            if (r2 == 0) goto Lee
            com.android.systemui.controls.ui.util.SALogger$Screen$CustomPanel r2 = com.android.systemui.controls.ui.util.SALogger.Screen.CustomPanel.INSTANCE
            r10.sendScreenView(r2)
        Lee:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.ui.DetailDialog.<init>(android.content.Context, com.android.systemui.broadcast.BroadcastSender, com.android.wm.shell.taskview.TaskView, android.app.PendingIntent, com.android.systemui.controls.ui.ControlViewHolder, com.android.systemui.statusbar.policy.KeyguardStateController, com.android.systemui.plugins.ActivityStarter, com.android.systemui.controls.ui.util.SALogger):void");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        Activity activity;
        boolean z;
        if (!isShowing()) {
            return;
        }
        this.taskView.release();
        Context context = this.activityContext;
        Boolean bool = null;
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else {
            activity = null;
        }
        if (activity != null) {
            if (!activity.isFinishing() && !activity.isDestroyed()) {
                z = false;
            } else {
                z = true;
            }
            bool = Boolean.valueOf(z);
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            return;
        }
        super.dismiss();
    }
}
