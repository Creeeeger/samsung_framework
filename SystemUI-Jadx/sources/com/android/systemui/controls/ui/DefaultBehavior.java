package com.android.systemui.controls.ui;

import android.service.controls.Control;
import android.view.View;
import com.android.systemui.BasicRune;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DefaultBehavior implements Behavior, CustomBehavior {
    public ControlViewHolder cvh;

    @Override // com.android.systemui.controls.ui.Behavior
    public final void bind(ControlWithState controlWithState, int i) {
        CharSequence charSequence;
        ControlViewHolder cvh = getCvh();
        final Control control = controlWithState.control;
        if (control != null) {
            charSequence = control.getStatusText();
        } else {
            charSequence = null;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        Set set = ControlViewHolder.FORCE_PANEL_DEVICES;
        cvh.setStatusText(charSequence, false);
        getCvh().applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i, false, true);
        if (BasicRune.CONTROLS_SAMSUNG_STYLE && control != null) {
            getCvh().layout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.DefaultBehavior$bind$1$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CustomControlActionCoordinator customControlActionCoordinator = DefaultBehavior.this.getCvh().getCustomControlViewHolder().customControlActionCoordinator;
                    if (customControlActionCoordinator != null) {
                        ((ControlActionCoordinatorImpl) customControlActionCoordinator).customTouch(DefaultBehavior.this.getCvh(), control.getControlTemplate().getTemplateId(), control);
                    }
                }
            });
        }
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
