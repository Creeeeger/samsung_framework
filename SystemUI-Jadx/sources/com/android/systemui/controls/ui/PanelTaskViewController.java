package com.android.systemui.controls.ui;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Trace;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.util.ConvenienceExtensionsKt;
import com.android.wm.shell.taskview.TaskView;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PanelTaskViewController {
    public final Context activityContext;
    public final Intent fillInIntent;
    public final Function0 hide;
    public final PendingIntent pendingIntent;
    public final PanelTaskViewController$stateCallback$1 stateCallback;
    public final TaskView taskView;
    public final Executor uiExecutor;

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.controls.ui.PanelTaskViewController$stateCallback$1] */
    public PanelTaskViewController(Context context, Executor executor, PendingIntent pendingIntent, TaskView taskView, Function0 function0) {
        this.activityContext = context;
        this.uiExecutor = executor;
        this.pendingIntent = pendingIntent;
        this.taskView = taskView;
        this.hide = function0;
        taskView.setAlpha(0.0f);
        Intent intent = new Intent();
        intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
        intent.addFlags(134217728);
        this.fillInIntent = intent;
        this.stateCallback = new TaskView.Listener() { // from class: com.android.systemui.controls.ui.PanelTaskViewController$stateCallback$1
            @Override // com.android.wm.shell.taskview.TaskView.Listener
            public final void onBackPressedOnTaskRoot(int i) {
                PanelTaskViewController.this.hide.invoke();
            }

            @Override // com.android.wm.shell.taskview.TaskView.Listener
            public final void onInitialized() {
                final PanelTaskViewController panelTaskViewController = PanelTaskViewController.this;
                final ActivityOptions makeCustomAnimation = ActivityOptions.makeCustomAnimation(panelTaskViewController.activityContext, 0, 0);
                makeCustomAnimation.setTaskAlwaysOnTop(true);
                panelTaskViewController.taskView.post(new Runnable() { // from class: com.android.systemui.controls.ui.PanelTaskViewController$stateCallback$1$onInitialized$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i;
                        Resources resources = PanelTaskViewController.this.activityContext.getResources();
                        if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
                            i = R.dimen.custom_controls_panel_corner_radius;
                        } else {
                            i = R.dimen.controls_panel_corner_radius;
                        }
                        int dimensionPixelSize = resources.getDimensionPixelSize(i);
                        float[] fArr = new float[8];
                        for (int i2 = 0; i2 < 8; i2++) {
                            fArr[i2] = dimensionPixelSize;
                        }
                        TaskView taskView2 = PanelTaskViewController.this.taskView;
                        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
                        shapeDrawable.setTint(0);
                        taskView2.setBackground(shapeDrawable);
                        if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
                            PanelTaskViewController.this.taskView.setZOrderedOnTop(true, true);
                            PanelTaskViewController.this.taskView.setCornerRadius(dimensionPixelSize);
                        }
                        PanelTaskViewController.this.taskView.setClipToOutline(true);
                        PanelTaskViewController panelTaskViewController2 = PanelTaskViewController.this;
                        TaskView taskView3 = panelTaskViewController2.taskView;
                        taskView3.startActivity(panelTaskViewController2.pendingIntent, panelTaskViewController2.fillInIntent, makeCustomAnimation, ConvenienceExtensionsKt.getBoundsOnScreen(taskView3));
                        Trace.instant(4096L, "PanelTaskViewController - startActivity");
                    }
                });
            }

            @Override // com.android.wm.shell.taskview.TaskView.Listener
            public final void onTaskCreated(int i) {
                PanelTaskViewController panelTaskViewController = PanelTaskViewController.this;
                panelTaskViewController.getClass();
                panelTaskViewController.taskView.setAlpha(1.0f);
            }

            @Override // com.android.wm.shell.taskview.TaskView.Listener
            public final void onTaskRemovalStarted(int i) {
                PanelTaskViewController panelTaskViewController = PanelTaskViewController.this;
                panelTaskViewController.getClass();
                panelTaskViewController.release();
            }
        };
    }

    public final void release() {
        this.taskView.release();
    }

    public /* synthetic */ PanelTaskViewController(Context context, Executor executor, PendingIntent pendingIntent, TaskView taskView, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, executor, pendingIntent, taskView, (i & 16) != 0 ? new Function0() { // from class: com.android.systemui.controls.ui.PanelTaskViewController.1
            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ Object invoke() {
                return Unit.INSTANCE;
            }
        } : function0);
    }
}
