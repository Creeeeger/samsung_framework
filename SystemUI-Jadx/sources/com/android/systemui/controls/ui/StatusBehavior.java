package com.android.systemui.controls.ui;

import android.R;
import android.app.ActivityOptions;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.service.controls.Control;
import android.view.View;
import com.android.systemui.BasicRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StatusBehavior implements Behavior, CustomBehavior {
    public ControlViewHolder cvh;

    public static final void access$showNotFoundDialog(StatusBehavior statusBehavior, final ControlViewHolder controlViewHolder, final ControlWithState controlWithState) {
        statusBehavior.getClass();
        PackageManager packageManager = controlViewHolder.context.getPackageManager();
        CharSequence applicationLabel = packageManager.getApplicationLabel(packageManager.getApplicationInfo(controlWithState.componentName.getPackageName(), 128));
        Context context = controlViewHolder.context;
        final AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.Theme.DeviceDefault.Dialog.Alert);
        Resources resources = context.getResources();
        builder.setTitle(resources.getString(com.android.systemui.R.string.controls_error_removed_title));
        builder.setMessage(resources.getString(com.android.systemui.R.string.controls_error_removed_message, controlViewHolder.title.getText(), applicationLabel));
        builder.setPositiveButton(com.android.systemui.R.string.controls_open_app, new DialogInterface.OnClickListener() { // from class: com.android.systemui.controls.ui.StatusBehavior$showNotFoundDialog$builder$1$1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                PendingIntent appIntent;
                try {
                    Bundle bundle = ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(1).toBundle();
                    Control control = ControlWithState.this.control;
                    if (control != null && (appIntent = control.getAppIntent()) != null) {
                        appIntent.send(bundle);
                    }
                    builder.getContext().sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
                } catch (PendingIntent.CanceledException unused) {
                    controlViewHolder.setErrorStatus();
                }
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.android.systemui.controls.ui.StatusBehavior$showNotFoundDialog$builder$1$2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        AlertDialog create = builder.create();
        create.getWindow().setType(2020);
        create.show();
        controlViewHolder.visibleDialog = create;
    }

    @Override // com.android.systemui.controls.ui.Behavior
    public final void bind(final ControlWithState controlWithState, int i) {
        int i2;
        int i3;
        boolean z = BasicRune.CONTROLS_SAMSUNG_STYLE;
        final Control control = controlWithState.control;
        if (z && control != null) {
            getCvh().layout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.StatusBehavior$bind$1$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CustomControlActionCoordinator customControlActionCoordinator = StatusBehavior.this.getCvh().getCustomControlViewHolder().customControlActionCoordinator;
                    if (customControlActionCoordinator != null) {
                        ((ControlActionCoordinatorImpl) customControlActionCoordinator).customTouch(StatusBehavior.this.getCvh(), control.getControlTemplate().getTemplateId(), control);
                    }
                }
            });
        }
        if (control != null) {
            i2 = control.getStatus();
        } else {
            i2 = 0;
        }
        if (z) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        getCvh().isLoading = true;
                        i3 = com.android.systemui.R.string.controls_custom_loading;
                    } else {
                        i3 = com.android.systemui.R.string.controls_custom_error_timeout;
                    }
                } else {
                    i3 = com.android.systemui.R.string.controls_custom_error_generic;
                }
            } else {
                getCvh().layout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.StatusBehavior$bind$msg$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        StatusBehavior statusBehavior = StatusBehavior.this;
                        final ControlViewHolder cvh = statusBehavior.getCvh();
                        final ControlWithState controlWithState2 = controlWithState;
                        statusBehavior.getClass();
                        PackageManager packageManager = cvh.context.getPackageManager();
                        CharSequence applicationLabel = packageManager.getApplicationLabel(packageManager.getApplicationInfo(controlWithState2.componentName.getPackageName(), 128));
                        Context context = cvh.context;
                        final AlertDialog.Builder builder = new AlertDialog.Builder(context, 2132018373);
                        Resources resources = context.getResources();
                        builder.setTitle(resources.getString(com.android.systemui.R.string.controls_custom_error_removed_title, cvh.title.getText()));
                        builder.setMessage(resources.getString(com.android.systemui.R.string.controls_custom_error_removed_message, applicationLabel));
                        builder.setPositiveButton(com.android.systemui.R.string.controls_custom_open_app, new DialogInterface.OnClickListener() { // from class: com.android.systemui.controls.ui.StatusBehavior$showCustomNotFoundDialog$builder$1$1
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i4) {
                                PendingIntent appIntent;
                                try {
                                    Control control2 = ControlWithState.this.control;
                                    if (control2 != null && (appIntent = control2.getAppIntent()) != null) {
                                        appIntent.send();
                                    }
                                    builder.getContext().sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
                                } catch (PendingIntent.CanceledException unused) {
                                    cvh.setErrorStatus();
                                }
                                dialogInterface.dismiss();
                            }
                        });
                        builder.setNegativeButton(com.android.systemui.R.string.controls_custom_dialog_cancel, new DialogInterface.OnClickListener() { // from class: com.android.systemui.controls.ui.StatusBehavior$showCustomNotFoundDialog$builder$1$2
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i4) {
                                dialogInterface.cancel();
                            }
                        });
                        final AlertDialog create = builder.create();
                        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.systemui.controls.ui.StatusBehavior$showCustomNotFoundDialog$1$1
                            @Override // android.content.DialogInterface.OnShowListener
                            public final void onShow(DialogInterface dialogInterface) {
                                int color = create.getContext().getResources().getColor(com.android.systemui.R.color.basic_interaction_dialog_button, create.getContext().getTheme());
                                AlertDialog alertDialog = create;
                                alertDialog.getButton(-1).setTextColor(color);
                                alertDialog.getButton(-2).setTextColor(color);
                            }
                        });
                        create.getWindow().setType(2020);
                        create.show();
                        cvh.visibleDialog = create;
                    }
                });
                i3 = com.android.systemui.R.string.controls_custom_error_removed;
            }
        } else if (i2 != 2) {
            if (i2 != 3) {
                if (i2 != 4) {
                    getCvh().isLoading = true;
                    i3 = R.string.postalTypeWork;
                } else {
                    i3 = com.android.systemui.R.string.controls_error_timeout;
                }
            } else {
                i3 = com.android.systemui.R.string.controls_error_generic;
            }
        } else {
            getCvh().layout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.StatusBehavior$bind$msg$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StatusBehavior statusBehavior = StatusBehavior.this;
                    StatusBehavior.access$showNotFoundDialog(statusBehavior, statusBehavior.getCvh(), controlWithState);
                }
            });
            getCvh().layout.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.systemui.controls.ui.StatusBehavior$bind$msg$3
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    StatusBehavior statusBehavior = StatusBehavior.this;
                    StatusBehavior.access$showNotFoundDialog(statusBehavior, statusBehavior.getCvh(), controlWithState);
                    return true;
                }
            });
            i3 = com.android.systemui.R.string.controls_error_removed;
        }
        getCvh().setStatusText(getCvh().context.getString(i3), false);
        getCvh().applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i, false, true);
    }

    @Override // com.android.systemui.controls.ui.CustomBehavior
    public final void dispose() {
        getCvh().layout.setOnClickListener(null);
    }

    public final ControlViewHolder getCvh() {
        ControlViewHolder controlViewHolder = this.cvh;
        if (controlViewHolder != null) {
            return controlViewHolder;
        }
        return null;
    }

    @Override // com.android.systemui.controls.ui.Behavior
    public final void initialize(ControlViewHolder controlViewHolder) {
        this.cvh = controlViewHolder;
    }
}
