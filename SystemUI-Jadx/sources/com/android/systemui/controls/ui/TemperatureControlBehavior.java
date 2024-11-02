package com.android.systemui.controls.ui;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.service.controls.Control;
import android.service.controls.templates.ControlTemplate;
import android.service.controls.templates.TemperatureControlTemplate;
import android.view.View;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TemperatureControlBehavior implements Behavior, CustomBehavior {
    public Drawable clipLayer;
    public Control control;
    public ControlViewHolder cvh;
    public Behavior subBehavior;

    @Override // com.android.systemui.controls.ui.Behavior
    public final void bind(ControlWithState controlWithState, int i) {
        LayerDrawable layerDrawable;
        boolean z;
        Control control = controlWithState.control;
        Intrinsics.checkNotNull(control);
        this.control = control;
        ControlViewHolder cvh = getCvh();
        CharSequence statusText = getControl().getStatusText();
        Set set = ControlViewHolder.FORCE_PANEL_DEVICES;
        int i2 = 0;
        cvh.setStatusText(statusText, false);
        if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
            layerDrawable = (RippleDrawable) getCvh().layout.getBackground();
        } else {
            layerDrawable = (LayerDrawable) getCvh().layout.getBackground();
        }
        this.clipLayer = layerDrawable.findDrawableByLayerId(R.id.clip_layer);
        final TemperatureControlTemplate temperatureControlTemplate = (TemperatureControlTemplate) getControl().getControlTemplate();
        int currentActiveMode = temperatureControlTemplate.getCurrentActiveMode();
        ControlTemplate template = temperatureControlTemplate.getTemplate();
        if (!Intrinsics.areEqual(template, ControlTemplate.getNoTemplateObject()) && !Intrinsics.areEqual(template, ControlTemplate.getErrorTemplate())) {
            this.subBehavior = getCvh().bindBehavior(this.subBehavior, getCvh().findBehaviorClass(getControl().getStatus(), template, getControl().getDeviceType(), 0), currentActiveMode);
            return;
        }
        if (currentActiveMode != 0 && currentActiveMode != 1) {
            z = true;
        } else {
            z = false;
        }
        Drawable drawable = this.clipLayer;
        if (drawable == null) {
            drawable = null;
        }
        if (z) {
            i2 = 10000;
        }
        drawable.setLevel(i2);
        getCvh().applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(currentActiveMode, z, true);
        getCvh().layout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.TemperatureControlBehavior$bind$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON) {
                    CustomControlActionCoordinator customControlActionCoordinator = TemperatureControlBehavior.this.getCvh().getCustomControlViewHolder().customControlActionCoordinator;
                    if (customControlActionCoordinator != null) {
                        ((ControlActionCoordinatorImpl) customControlActionCoordinator).customTouch(TemperatureControlBehavior.this.getCvh(), temperatureControlTemplate.getTemplateId(), TemperatureControlBehavior.this.getControl());
                        return;
                    }
                    return;
                }
                ((ControlActionCoordinatorImpl) TemperatureControlBehavior.this.getCvh().controlActionCoordinator).touch(TemperatureControlBehavior.this.getCvh(), temperatureControlTemplate.getTemplateId(), TemperatureControlBehavior.this.getControl());
            }
        });
    }

    @Override // com.android.systemui.controls.ui.CustomBehavior
    public final void dispose() {
        CustomBehavior customBehavior = null;
        getCvh().layout.setOnClickListener(null);
        Behavior behavior = this.subBehavior;
        if (behavior instanceof CustomBehavior) {
            customBehavior = (CustomBehavior) behavior;
        }
        if (customBehavior != null) {
            customBehavior.dispose();
        }
    }

    public final Control getControl() {
        Control control = this.control;
        if (control != null) {
            return control;
        }
        return null;
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
