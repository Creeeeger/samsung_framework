package com.android.systemui.controls.ui;

import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.service.controls.Control;
import android.service.controls.templates.ThumbnailTemplate;
import android.util.TypedValue;
import android.view.View;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.controls.ui.view.ActionIconView;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.Set;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ThumbnailBehavior implements Behavior, CustomBehavior, CustomButtonBehavior {
    public final CanUseIconPredicate canUseIconPredicate;
    public Control control;
    public ControlViewHolder cvh;
    public int shadowColor;
    public float shadowOffsetX;
    public float shadowOffsetY;
    public float shadowRadius;
    public ThumbnailTemplate template;

    public ThumbnailBehavior(int i) {
        this.canUseIconPredicate = new CanUseIconPredicate(i);
    }

    @Override // com.android.systemui.controls.ui.Behavior
    public final void bind(ControlWithState controlWithState, final int i) {
        LayerDrawable layerDrawable;
        int i2;
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
        this.template = (ThumbnailTemplate) control3.getControlTemplate();
        boolean z = BasicRune.CONTROLS_SAMSUNG_STYLE;
        if (z) {
            layerDrawable = (RippleDrawable) getCvh().layout.getBackground();
        } else {
            layerDrawable = (LayerDrawable) getCvh().layout.getBackground();
        }
        final ClipDrawable clipDrawable = (ClipDrawable) layerDrawable.findDrawableByLayerId(R.id.clip_layer);
        if (getTemplate().isActive()) {
            i2 = 10000;
        } else {
            i2 = 0;
        }
        clipDrawable.setLevel(i2);
        if (z) {
            getCvh().layout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.ThumbnailBehavior$bind$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CustomControlActionCoordinator customControlActionCoordinator = ThumbnailBehavior.this.getCvh().getCustomControlViewHolder().customControlActionCoordinator;
                    if (customControlActionCoordinator != null) {
                        ControlViewHolder cvh2 = ThumbnailBehavior.this.getCvh();
                        String templateId = ThumbnailBehavior.this.getTemplate().getTemplateId();
                        Control control5 = ThumbnailBehavior.this.control;
                        if (control5 == null) {
                            control5 = null;
                        }
                        ((ControlActionCoordinatorImpl) customControlActionCoordinator).customTouch(cvh2, templateId, control5);
                    }
                }
            });
            ActionIconView actionIconView = getCvh().getCustomControlViewHolder().actionIcon;
            if (actionIconView != null) {
                actionIconView.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.ThumbnailBehavior$bind$2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CustomControlActionCoordinator customControlActionCoordinator = ThumbnailBehavior.this.getCvh().getCustomControlViewHolder().customControlActionCoordinator;
                        if (customControlActionCoordinator != null) {
                            ControlViewHolder cvh2 = ThumbnailBehavior.this.getCvh();
                            String templateId = ThumbnailBehavior.this.getTemplate().getTemplateId();
                            Control control5 = ThumbnailBehavior.this.control;
                            if (control5 == null) {
                                control5 = null;
                            }
                            ((ControlActionCoordinatorImpl) customControlActionCoordinator).touchMainAction(cvh2, templateId, control5);
                        }
                    }
                });
            }
        }
        if (getTemplate().isActive()) {
            getCvh().title.setVisibility(4);
            getCvh().subtitle.setVisibility(4);
            getCvh().status.setShadowLayer(this.shadowOffsetX, this.shadowOffsetY, this.shadowRadius, this.shadowColor);
            ((ExecutorImpl) getCvh().bgExecutor).execute(new Runnable() { // from class: com.android.systemui.controls.ui.ThumbnailBehavior$bind$3
                @Override // java.lang.Runnable
                public final void run() {
                    Icon thumbnail = ThumbnailBehavior.this.getTemplate().getThumbnail();
                    final Drawable drawable = null;
                    if (thumbnail != null) {
                        if (!((Boolean) ThumbnailBehavior.this.canUseIconPredicate.invoke(thumbnail)).booleanValue()) {
                            thumbnail = null;
                        }
                        if (thumbnail != null) {
                            drawable = thumbnail.loadDrawable(ThumbnailBehavior.this.getCvh().context);
                        }
                    }
                    DelayableExecutor delayableExecutor = ThumbnailBehavior.this.getCvh().uiExecutor;
                    final ThumbnailBehavior thumbnailBehavior = ThumbnailBehavior.this;
                    final ClipDrawable clipDrawable2 = clipDrawable;
                    final int i3 = i;
                    ((ExecutorImpl) delayableExecutor).execute(new Runnable() { // from class: com.android.systemui.controls.ui.ThumbnailBehavior$bind$3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            float dimensionPixelSize = ThumbnailBehavior.this.getCvh().context.getResources().getDimensionPixelSize(R.dimen.control_corner_radius);
                            Drawable drawable2 = drawable;
                            if (drawable2 != null) {
                                clipDrawable2.setDrawable(new CornerDrawable(drawable2, dimensionPixelSize));
                            }
                            clipDrawable2.setColorFilter(new BlendModeColorFilter(ThumbnailBehavior.this.getCvh().context.getResources().getColor(R.color.control_thumbnail_tint), BlendMode.LUMINOSITY));
                            ThumbnailBehavior.this.getCvh().applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i3, ThumbnailBehavior.this.getTemplate().isActive(), true);
                        }
                    });
                }
            });
        } else {
            getCvh().title.setVisibility(0);
            getCvh().subtitle.setVisibility(0);
            getCvh().status.setShadowLayer(0.0f, 0.0f, 0.0f, this.shadowColor);
        }
        getCvh().applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(i, getTemplate().isActive(), true);
    }

    @Override // com.android.systemui.controls.ui.CustomBehavior
    public final void dispose() {
        getCvh().title.setVisibility(0);
        getCvh().subtitle.setVisibility(0);
        getCvh().status.setShadowLayer(0.0f, 0.0f, 0.0f, this.shadowColor);
        getCvh().layout.setOnClickListener(null);
        ActionIconView actionIconView = getCvh().getCustomControlViewHolder().actionIcon;
        if (actionIconView != null) {
            actionIconView.setOnClickListener(null);
        }
        Pair initClipLayerAndBaseLayer = getCvh().getCustomControlViewHolder().initClipLayerAndBaseLayer();
        getCvh().clipLayer = (ClipDrawable) initClipLayerAndBaseLayer.getFirst();
        getCvh().baseLayer = (GradientDrawable) initClipLayerAndBaseLayer.getSecond();
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

    public final ThumbnailTemplate getTemplate() {
        ThumbnailTemplate thumbnailTemplate = this.template;
        if (thumbnailTemplate != null) {
            return thumbnailTemplate;
        }
        return null;
    }

    @Override // com.android.systemui.controls.ui.Behavior
    public final void initialize(final ControlViewHolder controlViewHolder) {
        this.cvh = controlViewHolder;
        TypedValue typedValue = new TypedValue();
        Context context = controlViewHolder.context;
        context.getResources().getValue(R.dimen.controls_thumbnail_shadow_x, typedValue, true);
        this.shadowOffsetX = typedValue.getFloat();
        context.getResources().getValue(R.dimen.controls_thumbnail_shadow_y, typedValue, true);
        this.shadowOffsetY = typedValue.getFloat();
        context.getResources().getValue(R.dimen.controls_thumbnail_shadow_radius, typedValue, true);
        this.shadowRadius = typedValue.getFloat();
        this.shadowColor = context.getResources().getColor(R.color.control_thumbnail_shadow_color);
        controlViewHolder.layout.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.controls.ui.ThumbnailBehavior$initialize$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ControlViewHolder controlViewHolder2 = ControlViewHolder.this;
                ControlActionCoordinator controlActionCoordinator = controlViewHolder2.controlActionCoordinator;
                String templateId = this.getTemplate().getTemplateId();
                Control control = this.control;
                if (control == null) {
                    control = null;
                }
                ((ControlActionCoordinatorImpl) controlActionCoordinator).touch(controlViewHolder2, templateId, control);
            }
        });
    }
}
