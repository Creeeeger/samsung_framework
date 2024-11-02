package com.android.systemui.controls.ui;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.service.controls.Control;
import android.service.controls.templates.ControlTemplate;
import android.service.controls.templates.StatelessTemplate;
import android.view.View;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.controls.ui.view.ActionIconView;
import com.android.systemui.util.concurrency.DelayableExecutor;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TouchBehavior implements Behavior, CustomBehavior {
    public Control control;
    public ControlViewHolder cvh;
    public boolean hasCustomColorInNoTemplate;
    public int lastColorOffset;
    public boolean statelessTouch;
    public ControlTemplate template;

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

    @Override // com.android.systemui.controls.ui.Behavior
    public final void bind(ControlWithState controlWithState, int i) {
        LayerDrawable layerDrawable;
        boolean z;
        ActionIconView actionIconView;
        Control control = controlWithState.control;
        Intrinsics.checkNotNull(control);
        this.control = control;
        this.lastColorOffset = i;
        ControlViewHolder cvh = getCvh();
        CharSequence statusText = getControl().getStatusText();
        Set set = ControlViewHolder.FORCE_PANEL_DEVICES;
        int i2 = 0;
        cvh.setStatusText(statusText, false);
        this.template = getControl().getControlTemplate();
        if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON) {
            if ((getTemplate() instanceof StatelessTemplate) && (actionIconView = getCvh().getCustomControlViewHolder().actionIcon) != null) {
                actionIconView.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.TouchBehavior$bind$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CustomControlActionCoordinator customControlActionCoordinator = TouchBehavior.this.getCvh().getCustomControlViewHolder().customControlActionCoordinator;
                        if (customControlActionCoordinator != null) {
                            ((ControlActionCoordinatorImpl) customControlActionCoordinator).touchMainAction(TouchBehavior.this.getCvh(), TouchBehavior.this.getTemplate().getTemplateId(), TouchBehavior.this.getControl());
                        }
                        if (TouchBehavior.this.getTemplate() instanceof StatelessTemplate) {
                            TouchBehavior touchBehavior = TouchBehavior.this;
                            touchBehavior.statelessTouch = true;
                            touchBehavior.getCvh().applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(TouchBehavior.this.lastColorOffset, TouchBehavior.this.getEnabled(), true);
                            DelayableExecutor delayableExecutor = TouchBehavior.this.getCvh().uiExecutor;
                            final TouchBehavior touchBehavior2 = TouchBehavior.this;
                            delayableExecutor.executeDelayed(3000L, new Runnable() { // from class: com.android.systemui.controls.ui.TouchBehavior$bind$1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    TouchBehavior touchBehavior3 = TouchBehavior.this;
                                    touchBehavior3.statelessTouch = false;
                                    ControlViewHolder cvh2 = touchBehavior3.getCvh();
                                    boolean enabled = TouchBehavior.this.getEnabled();
                                    int i3 = TouchBehavior.this.lastColorOffset;
                                    Set set2 = ControlViewHolder.FORCE_PANEL_DEVICES;
                                    cvh2.applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i3, enabled, true);
                                }
                            });
                        }
                    }
                });
            }
            if (Intrinsics.areEqual(getTemplate(), ControlTemplate.NO_TEMPLATE) && getControl().getCustomColor() != null) {
                z = true;
            } else {
                z = false;
            }
            this.hasCustomColorInNoTemplate = z;
        }
        if (BasicRune.CONTROLS_SAMSUNG_STYLE) {
            layerDrawable = (RippleDrawable) getCvh().layout.getBackground();
        } else {
            layerDrawable = (LayerDrawable) getCvh().layout.getBackground();
        }
        Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(R.id.clip_layer);
        if (getEnabled()) {
            i2 = 10000;
        }
        findDrawableByLayerId.setLevel(i2);
        getCvh().applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i, getEnabled(), true);
    }

    @Override // com.android.systemui.controls.ui.CustomBehavior
    public final void dispose() {
        ActionIconView actionIconView;
        getCvh().layout.setOnClickListener(null);
        if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON && (actionIconView = getCvh().getCustomControlViewHolder().actionIcon) != null) {
            actionIconView.setOnClickListener(null);
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

    public final boolean getEnabled() {
        if (this.lastColorOffset <= 0 && !this.statelessTouch && (!BasicRune.CONTROLS_SAMSUNG_STYLE || !this.hasCustomColorInNoTemplate)) {
            return false;
        }
        return true;
    }

    public final ControlTemplate getTemplate() {
        ControlTemplate controlTemplate = this.template;
        if (controlTemplate != null) {
            return controlTemplate;
        }
        return null;
    }

    @Override // com.android.systemui.controls.ui.Behavior
    public final void initialize(final ControlViewHolder controlViewHolder) {
        this.cvh = controlViewHolder;
        controlViewHolder.layout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.TouchBehavior$initialize$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (BasicRune.CONTROLS_CUSTOM_MAIN_ACTION_ICON) {
                    CustomControlActionCoordinator customControlActionCoordinator = ControlViewHolder.this.getCustomControlViewHolder().customControlActionCoordinator;
                    if (customControlActionCoordinator != null) {
                        ((ControlActionCoordinatorImpl) customControlActionCoordinator).customTouch(ControlViewHolder.this, this.getTemplate().getTemplateId(), this.getControl());
                        return;
                    }
                    return;
                }
                ControlViewHolder controlViewHolder2 = ControlViewHolder.this;
                ((ControlActionCoordinatorImpl) controlViewHolder2.controlActionCoordinator).touch(controlViewHolder2, this.getTemplate().getTemplateId(), this.getControl());
                if (this.getTemplate() instanceof StatelessTemplate) {
                    TouchBehavior touchBehavior = this;
                    touchBehavior.statelessTouch = true;
                    ControlViewHolder.this.applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(this.lastColorOffset, touchBehavior.getEnabled(), true);
                    final ControlViewHolder controlViewHolder3 = ControlViewHolder.this;
                    DelayableExecutor delayableExecutor = controlViewHolder3.uiExecutor;
                    final TouchBehavior touchBehavior2 = this;
                    delayableExecutor.executeDelayed(3000L, new Runnable() { // from class: com.android.systemui.controls.ui.TouchBehavior$initialize$1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            TouchBehavior touchBehavior3 = TouchBehavior.this;
                            touchBehavior3.statelessTouch = false;
                            ControlViewHolder controlViewHolder4 = controlViewHolder3;
                            boolean enabled = touchBehavior3.getEnabled();
                            int i = TouchBehavior.this.lastColorOffset;
                            Set set = ControlViewHolder.FORCE_PANEL_DEVICES;
                            controlViewHolder4.applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i, enabled, true);
                        }
                    });
                }
            }
        });
    }
}
