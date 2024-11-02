package com.android.systemui.controls.management.adapter;

import android.content.res.Resources;
import android.service.controls.Control;
import android.service.controls.templates.StatelessTemplate;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.controls.ControlsMetricsLoggerImpl;
import com.android.systemui.controls.controller.ControlInfo;
import com.android.systemui.controls.management.model.MainControlModel;
import com.android.systemui.controls.management.model.MainModel;
import com.android.systemui.controls.ui.Behavior;
import com.android.systemui.controls.ui.ControlActionCoordinatorImpl;
import com.android.systemui.controls.ui.ControlViewHolder;
import com.android.systemui.controls.ui.ControlWithState;
import com.android.systemui.controls.ui.CustomBehavior;
import com.android.systemui.controls.ui.CustomButtonBehavior;
import com.android.systemui.controls.ui.CustomControlViewHolder;
import com.android.systemui.controls.ui.TouchBehavior;
import com.android.systemui.controls.ui.util.ControlsUtil;
import com.android.systemui.controls.ui.view.ActionIconView;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlHolder extends Holder {
    public final ControlViewHolder controlViewHolder;
    public final Map holders;

    public ControlHolder(View view, ControlViewHolder controlViewHolder, Map<String, ControlViewHolder> map) {
        super(view, null);
        this.controlViewHolder = controlViewHolder;
        this.holders = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [com.android.systemui.controls.ui.CustomBehavior] */
    @Override // com.android.systemui.controls.management.adapter.Holder
    public final void bindData(MainModel mainModel) {
        ControlWithState controlWithState;
        CustomButtonBehavior customButtonBehavior;
        boolean z;
        String str;
        ImageView imageView;
        int i;
        boolean z2;
        ImageView imageView2;
        LottieAnimationView lottieAnimationView;
        ImageView imageView3;
        ActionIconView actionIconView;
        ProgressBar progressBar;
        if ((mainModel instanceof MainControlModel) && (controlWithState = ((MainControlModel) mainModel).controlWithState) != null) {
            final ControlViewHolder controlViewHolder = this.controlViewHolder;
            controlViewHolder.getClass();
            boolean z3 = BasicRune.CONTROLS_SAMSUNG_STYLE;
            boolean z4 = false;
            CustomButtonBehavior customButtonBehavior2 = null;
            if (z3) {
                CustomControlViewHolder customControlViewHolder = controlViewHolder.getCustomControlViewHolder();
                Behavior behavior = controlViewHolder.behavior;
                customControlViewHolder.getClass();
                boolean z5 = BasicRune.CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING;
                ImageView imageView4 = customControlViewHolder.icon;
                if (z5 && customControlViewHolder.controlsUtil != null) {
                    Resources resources = imageView4.getContext().getResources();
                    ControlsUtil.Companion companion = ControlsUtil.Companion;
                    int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.control_custom_icon_padding_size);
                    imageView4.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
                }
                imageView4.setVisibility(0);
                imageView4.setBackground(null);
                imageView4.setImageDrawable(null);
                imageView4.setImageState(new int[0], false);
                imageView4.setImageTintList(null);
                imageView4.setAlpha(1.0f);
                if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON && (actionIconView = customControlViewHolder.actionIcon) != null) {
                    ImageView imageView5 = actionIconView.actionIcon;
                    imageView5.setImageDrawable(null);
                    imageView5.setVisibility(8);
                    if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS && (progressBar = actionIconView.actionIconProgress) != null) {
                        progressBar.setVisibility(8);
                    }
                }
                if (BasicRune.CONTROLS_CUSTOM_STATUS && (imageView3 = customControlViewHolder.statusIcon) != null) {
                    imageView3.setImageDrawable(null);
                }
                if (BasicRune.CONTROLS_LOTTIE_ICON_ANIMATION && (lottieAnimationView = customControlViewHolder.animationView) != null) {
                    lottieAnimationView.setVisibility(8);
                    lottieAnimationView.cancelAnimation();
                }
                if (customControlViewHolder.controlsRuneWrapper != null && BasicRune.CONTROLS_OVERLAY_CUSTOM_ICON) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2 && (imageView2 = customControlViewHolder.overlayCustomIcon) != null) {
                    imageView2.setVisibility(8);
                    imageView2.setImageDrawable(null);
                }
                if (!(behavior instanceof TouchBehavior) || !(((TouchBehavior) behavior).getTemplate() instanceof StatelessTemplate)) {
                    CustomBehavior customBehavior = customControlViewHolder.customBehavior;
                    if (customBehavior != null) {
                        customBehavior.dispose();
                        customControlViewHolder.customBehavior = null;
                    }
                    ViewGroup viewGroup = customControlViewHolder.layout;
                    viewGroup.setOnClickListener(null);
                    viewGroup.setOnTouchListener(null);
                    behavior = null;
                }
                controlViewHolder.behavior = behavior;
            }
            ControlInfo controlInfo = controlWithState.ci;
            if (z3 || !controlViewHolder.userInteractionInProgress) {
                controlViewHolder.cws = controlWithState;
                int controlStatus = controlViewHolder.getControlStatus();
                TextView textView = controlViewHolder.subtitle;
                TextView textView2 = controlViewHolder.title;
                Control control = controlWithState.control;
                if (controlStatus != 0 && controlViewHolder.getControlStatus() != 2) {
                    if (control != null) {
                        textView2.setText(control.getTitle());
                        textView.setText(control.getSubtitle());
                        if (!z3 && (imageView = controlViewHolder.chevronIcon) != null) {
                            if (controlViewHolder.usePanel()) {
                                i = 0;
                            } else {
                                i = 4;
                            }
                            imageView.setVisibility(i);
                        }
                    }
                } else {
                    textView2.setText(controlInfo.controlTitle);
                    textView.setText(controlInfo.controlSubtitle);
                }
                if (control != null) {
                    ViewGroup viewGroup2 = controlViewHolder.layout;
                    viewGroup2.setClickable(true);
                    if (!BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON) {
                        viewGroup2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.systemui.controls.ui.ControlViewHolder$bindData$2$1
                            @Override // android.view.View.OnLongClickListener
                            public final boolean onLongClick(View view) {
                                ControlViewHolder controlViewHolder2 = ControlViewHolder.this;
                                ((ControlActionCoordinatorImpl) controlViewHolder2.controlActionCoordinator).longPress(controlViewHolder2);
                                return true;
                            }
                        });
                    }
                    String str2 = controlInfo.controlId;
                    ControlActionCoordinatorImpl controlActionCoordinatorImpl = (ControlActionCoordinatorImpl) controlViewHolder.controlActionCoordinator;
                    if (!controlActionCoordinatorImpl.isLocked()) {
                        ControlActionCoordinatorImpl.Action action = controlActionCoordinatorImpl.pendingAction;
                        if (action != null) {
                            str = action.controlId;
                        } else {
                            str = null;
                        }
                        if (Intrinsics.areEqual(str, str2)) {
                            ControlActionCoordinatorImpl.Action action2 = controlActionCoordinatorImpl.pendingAction;
                            Intrinsics.checkNotNull(action2);
                            controlActionCoordinatorImpl.showSettingsDialogIfNeeded(action2);
                            ControlActionCoordinatorImpl.Action action3 = controlActionCoordinatorImpl.pendingAction;
                            if (action3 != null) {
                                action3.invoke();
                            }
                            controlActionCoordinatorImpl.pendingAction = null;
                        }
                    }
                }
                boolean z6 = controlViewHolder.isLoading;
                controlViewHolder.isLoading = false;
                controlViewHolder.behavior = controlViewHolder.bindBehavior(controlViewHolder.behavior, controlViewHolder.findBehaviorClass(controlViewHolder.getControlStatus(), controlViewHolder.getControlTemplate(), controlViewHolder.getDeviceType(), controlViewHolder.getCustomControlViewHolder().layoutType), 0);
                if (z3) {
                    CustomControlViewHolder customControlViewHolder2 = controlViewHolder.getCustomControlViewHolder();
                    Behavior behavior2 = controlViewHolder.behavior;
                    customControlViewHolder2.getClass();
                    if (behavior2 instanceof CustomBehavior) {
                        customButtonBehavior = (CustomBehavior) behavior2;
                    } else {
                        customButtonBehavior = 0;
                    }
                    customControlViewHolder2.customBehavior = customButtonBehavior;
                    if (customButtonBehavior instanceof CustomButtonBehavior) {
                        customButtonBehavior2 = customButtonBehavior;
                    }
                    if (customButtonBehavior2 != null) {
                        CharSequence contentDescription = customButtonBehavior2.getContentDescription();
                        ActionIconView actionIconView2 = customControlViewHolder2.actionIcon;
                        if (actionIconView2 != null) {
                            if (contentDescription.length() > 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                actionIconView2.actionButtonDescription = contentDescription;
                                actionIconView2.updateContentDescription();
                            }
                        }
                        ActionIconView actionIconView3 = customControlViewHolder2.actionIcon;
                        TextView textView3 = customControlViewHolder2.subtitle;
                        TextView textView4 = customControlViewHolder2.title;
                        if (actionIconView3 != null) {
                            CharSequence text = textView4.getText();
                            actionIconView3.subTitle = textView3.getText();
                            actionIconView3.title = text;
                            actionIconView3.updateContentDescription();
                        }
                        Log.d("CustomControlViewHolder", "setCustomBehavior des = " + ((Object) contentDescription) + ", title = " + ((Object) textView4.getText()) + ", subtitle = " + ((Object) textView3.getText()));
                    }
                }
                controlViewHolder.updateContentDescription();
                if (z6 && !controlViewHolder.isLoading) {
                    z4 = true;
                }
                if (z4) {
                    ((ControlsMetricsLoggerImpl) controlViewHolder.controlsMetricsLogger).refreshEnd(controlViewHolder);
                }
            }
        }
    }

    public final void updateDimStatus(boolean z) {
        float f;
        CustomControlViewHolder customControlViewHolder = this.controlViewHolder.getCustomControlViewHolder();
        if (z) {
            f = customControlViewHolder.context.getResources().getFloat(R.dimen.controls_card_dim_alpha);
        } else {
            f = 1.0f;
        }
        customControlViewHolder.layout.setAlpha(f);
    }
}
