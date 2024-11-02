package com.android.systemui.controls.management.adapter;

import android.app.PendingIntent;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.systemui.R;
import com.android.systemui.controls.management.model.MainModel;
import com.android.systemui.controls.management.model.MainPanelModel;
import com.android.systemui.controls.ui.CustomControlsUiController;
import com.android.systemui.controls.ui.CustomControlsUiControllerImpl;
import com.android.systemui.controls.ui.CustomControlsUiControllerImpl$controlsPanelCallback$1;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.taskview.TaskView;
import com.android.wm.shell.taskview.TaskViewFactoryController;
import com.android.wm.shell.taskview.TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;
import java.util.function.Consumer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PanelHolder extends Holder {
    public final CustomControlsUiController.ControlsPanelUpdatedCallback callback;
    public final FrameLayout panelLayout;

    public PanelHolder(View view, CustomControlsUiController.ControlsPanelUpdatedCallback controlsPanelUpdatedCallback) {
        super(view, null);
        this.callback = controlsPanelUpdatedCallback;
        this.panelLayout = (FrameLayout) view.requireViewById(R.id.controls_panel_layout);
    }

    @Override // com.android.systemui.controls.management.adapter.Holder
    public final void bindData(MainModel mainModel) {
        if (!(mainModel instanceof MainPanelModel)) {
            return;
        }
        MainPanelModel mainPanelModel = (MainPanelModel) mainModel;
        Intrinsics.checkNotNull(mainPanelModel.panelActivity);
        CustomControlsUiControllerImpl$controlsPanelCallback$1 customControlsUiControllerImpl$controlsPanelCallback$1 = (CustomControlsUiControllerImpl$controlsPanelCallback$1) this.callback;
        customControlsUiControllerImpl$controlsPanelCallback$1.getClass();
        final CustomControlsUiControllerImpl customControlsUiControllerImpl = customControlsUiControllerImpl$controlsPanelCallback$1.this$0;
        final PendingIntent pendingIntent = mainPanelModel.pendingIntent;
        final FrameLayout frameLayout = this.panelLayout;
        frameLayout.post(new Runnable() { // from class: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                CustomControlsUiControllerImpl customControlsUiControllerImpl2 = CustomControlsUiControllerImpl.this;
                if (customControlsUiControllerImpl2.activityContext != null && customControlsUiControllerImpl2.onDismiss != null) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    Log.i("CustomControlsUiControllerImpl", "onPanelUpdated activityContext or onDismiss is null");
                    return;
                }
                TaskViewFactoryController.TaskViewFactoryImpl taskViewFactoryImpl = (TaskViewFactoryController.TaskViewFactoryImpl) customControlsUiControllerImpl2.taskViewFactory.get();
                final CustomControlsUiControllerImpl customControlsUiControllerImpl3 = CustomControlsUiControllerImpl.this;
                Context context = customControlsUiControllerImpl3.activityContext;
                final PendingIntent pendingIntent2 = pendingIntent;
                final ViewGroup viewGroup = frameLayout;
                Consumer consumer = new Consumer() { // from class: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1.1

                    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                    /* renamed from: com.android.systemui.controls.ui.CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1$1$1, reason: invalid class name and collision with other inner class name */
                    /* loaded from: classes.dex */
                    final /* synthetic */ class C00261 extends FunctionReferenceImpl implements Function0 {
                        public C00261(Object obj) {
                            super(0, obj, Runnable.class, "run", "run()V", 0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            ((Runnable) this.receiver).run();
                            return Unit.INSTANCE;
                        }
                    }

                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        boolean z2;
                        TaskView taskView = (TaskView) obj;
                        CustomControlsUiControllerImpl customControlsUiControllerImpl4 = CustomControlsUiControllerImpl.this;
                        Context context2 = customControlsUiControllerImpl4.activityContext;
                        if (context2 != null && customControlsUiControllerImpl4.onDismiss != null) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        if (z2) {
                            Log.i("CustomControlsUiControllerImpl", "onPanelUpdated taskViewFactory.create activityContext or onDismiss is null");
                            return;
                        }
                        Intrinsics.checkNotNull(context2);
                        DelayableExecutor delayableExecutor = CustomControlsUiControllerImpl.this.uiExecutor;
                        PendingIntent pendingIntent3 = pendingIntent2;
                        Runnable runnable = CustomControlsUiControllerImpl.this.onDismiss;
                        Intrinsics.checkNotNull(runnable);
                        PanelTaskViewController panelTaskViewController = new PanelTaskViewController(context2, delayableExecutor, pendingIntent3, taskView, new C00261(runnable));
                        viewGroup.addView(taskView);
                        panelTaskViewController.taskView.setListener(panelTaskViewController.uiExecutor, panelTaskViewController.stateCallback);
                        customControlsUiControllerImpl4.taskViewController = panelTaskViewController;
                    }
                };
                ((HandlerExecutor) TaskViewFactoryController.this.mShellExecutor).execute(new TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0(taskViewFactoryImpl, context, customControlsUiControllerImpl3.uiExecutor, consumer));
            }
        });
    }
}
