package com.android.systemui.controls.ui;

import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.service.controls.Control;
import android.service.controls.templates.ControlTemplate;
import android.service.controls.templates.TemperatureControlTemplate;
import android.service.controls.templates.ToggleTemplate;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.controls.ui.view.ActionIconView;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ToggleBehavior implements Behavior, CustomBehavior, CustomButtonBehavior {
    public Control control;
    public ControlViewHolder cvh;
    public ToggleTemplate template;

    @Override // com.android.systemui.controls.ui.Behavior
    public final void bind(ControlWithState controlWithState, int i) {
        ToggleTemplate toggleTemplate;
        LayerDrawable layerDrawable;
        Control control = controlWithState.control;
        Intrinsics.checkNotNull(control);
        this.control = control;
        ControlViewHolder cvh = getCvh();
        Control control2 = this.control;
        Control control3 = null;
        if (control2 == null) {
            control2 = null;
        }
        CharSequence statusText = control2.getStatusText();
        Set set = ControlViewHolder.FORCE_PANEL_DEVICES;
        cvh.setStatusText(statusText, false);
        Control control4 = this.control;
        if (control4 != null) {
            control3 = control4;
        }
        ControlTemplate controlTemplate = control3.getControlTemplate();
        if (controlTemplate instanceof ToggleTemplate) {
            toggleTemplate = (ToggleTemplate) controlTemplate;
        } else if (controlTemplate instanceof TemperatureControlTemplate) {
            toggleTemplate = (ToggleTemplate) ((TemperatureControlTemplate) controlTemplate).getTemplate();
        } else {
            Log.e("ControlsUiController", "Unsupported template type: " + controlTemplate);
            return;
        }
        this.template = toggleTemplate;
        if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
            layerDrawable = (RippleDrawable) getCvh().layout.getBackground();
        } else {
            layerDrawable = (LayerDrawable) getCvh().layout.getBackground();
        }
        layerDrawable.findDrawableByLayerId(R.id.clip_layer).setLevel(10000);
        getCvh().applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i, getTemplate().isChecked(), true);
    }

    @Override // com.android.systemui.controls.ui.CustomBehavior
    public final void dispose() {
        ActionIconView actionIconView;
        getCvh().layout.setOnClickListener(null);
        if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON && (actionIconView = getCvh().getCustomControlViewHolder().actionIcon) != null) {
            actionIconView.setOnClickListener(null);
        }
    }

    @Override // com.android.systemui.controls.ui.CustomButtonBehavior
    public final CharSequence getContentDescription() {
        return getTemplate().getContentDescription();
    }

    public final ControlViewHolder getCvh() {
        ControlViewHolder controlViewHolder = this.cvh;
        if (controlViewHolder != null) {
            return controlViewHolder;
        }
        return null;
    }

    public final ToggleTemplate getTemplate() {
        ToggleTemplate toggleTemplate = this.template;
        if (toggleTemplate != null) {
            return toggleTemplate;
        }
        return null;
    }

    @Override // com.android.systemui.controls.ui.Behavior
    public final void initialize(final ControlViewHolder controlViewHolder) {
        this.cvh = controlViewHolder;
        boolean z = BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON;
        ViewGroup viewGroup = controlViewHolder.layout;
        if (z) {
            viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.ToggleBehavior$initialize$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CustomControlActionCoordinator customControlActionCoordinator = ControlViewHolder.this.getCustomControlViewHolder().customControlActionCoordinator;
                    if (customControlActionCoordinator != null) {
                        ControlViewHolder controlViewHolder2 = ControlViewHolder.this;
                        String templateId = this.getTemplate().getTemplateId();
                        Control control = this.control;
                        if (control == null) {
                            control = null;
                        }
                        ((ControlActionCoordinatorImpl) customControlActionCoordinator).customTouch(controlViewHolder2, templateId, control);
                    }
                }
            });
            ActionIconView actionIconView = controlViewHolder.getCustomControlViewHolder().actionIcon;
            if (actionIconView != null) {
                actionIconView.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.ToggleBehavior$initialize$2$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CustomControlActionCoordinator customControlActionCoordinator = ControlViewHolder.this.getCustomControlViewHolder().customControlActionCoordinator;
                        if (customControlActionCoordinator != null) {
                            ((ControlActionCoordinatorImpl) customControlActionCoordinator).toggleMainAction(ControlViewHolder.this, this.getTemplate().getTemplateId(), this.getTemplate().isChecked());
                        }
                    }
                });
                return;
            }
            return;
        }
        viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.ToggleBehavior$initialize$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ControlViewHolder controlViewHolder2 = ControlViewHolder.this;
                ((ControlActionCoordinatorImpl) controlViewHolder2.controlActionCoordinator).toggle(controlViewHolder2, this.getTemplate().getTemplateId(), this.getTemplate().isChecked());
            }
        });
    }
}
