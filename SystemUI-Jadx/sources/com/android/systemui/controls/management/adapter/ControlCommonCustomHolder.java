package com.android.systemui.controls.management.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.controls.CustomControlInterface;
import com.android.systemui.controls.ui.CanUseIconPredicate;
import com.android.systemui.controls.ui.util.ControlsUtil;
import com.android.systemui.controls.util.ControlsRuneWrapper;
import kotlin.jvm.functions.Function2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ControlCommonCustomHolder extends CustomHolder {
    public final CanUseIconPredicate canUseIconPredicate;
    public final ControlsRuneWrapper controlsRuneWrapper;
    public final ControlsUtil controlsUtil;
    public final CheckBox favorite;
    public final Function2 favoriteCallback;
    public final ImageView icon;
    public final ImageView overlayCustomIcon;
    public final TextView removed;
    public final TextView title;

    public ControlCommonCustomHolder(View view, int i, int i2, ControlsUtil controlsUtil, ControlsRuneWrapper controlsRuneWrapper, Function2 function2) {
        super(view, null);
        ImageView imageView;
        this.controlsUtil = controlsUtil;
        this.controlsRuneWrapper = controlsRuneWrapper;
        this.favoriteCallback = function2;
        ImageView imageView2 = (ImageView) this.itemView.requireViewById(R.id.icon);
        this.icon = imageView2;
        TextView textView = (TextView) this.itemView.requireViewById(R.id.title);
        ControlsUtil.Companion.getClass();
        ControlsUtil.Companion.updateFontSize(textView, R.dimen.control_custom_text_size, 1.1f);
        this.title = textView;
        TextView textView2 = (TextView) this.itemView.requireViewById(R.id.status);
        ControlsUtil.Companion.updateFontSize(textView2, R.dimen.control_custom_text_size, 1.1f);
        this.removed = textView2;
        this.canUseIconPredicate = new CanUseIconPredicate(i);
        ViewStub viewStub = (ViewStub) this.itemView.requireViewById(i2);
        viewStub.setLayoutResource(R.layout.controls_checkbox_view);
        this.favorite = (CheckBox) viewStub.inflate();
        boolean z = BasicRune.CONTROLS_OVERLAY_CUSTOM_ICON;
        if (z) {
            this.overlayCustomIcon = (ImageView) this.itemView.requireViewById(R.id.overlay_custom_icon);
        }
        if (BasicRune.CONTROLS_SAMSUNG_STYLE_FOLD) {
            Context context = this.itemView.getContext();
            controlsUtil.getClass();
            if (ControlsUtil.isFoldDelta(context)) {
                Resources resources = view.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.control_custom_base_item_size_fold);
                ControlsUtil.Companion.setSize(view, dimensionPixelSize, dimensionPixelSize);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.control_custom_icon_size_fold);
                ControlsUtil.Companion.setSize(imageView2, dimensionPixelSize2, dimensionPixelSize2);
                if (z && (imageView = this.overlayCustomIcon) != null) {
                    ControlsUtil.Companion.setSize(imageView, dimensionPixelSize2, dimensionPixelSize2);
                }
                float dimension = resources.getDimension(R.dimen.control_custom_text_size_fold);
                textView.setTextSize(0, dimension);
                textView2.setTextSize(0, dimension);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    @Override // com.android.systemui.controls.management.adapter.CustomHolder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void bindData(com.android.systemui.controls.management.model.CustomElementWrapper r15) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.controls.management.adapter.ControlCommonCustomHolder.bindData(com.android.systemui.controls.management.model.CustomElementWrapper):void");
    }

    public void resetForReuse() {
        if (BasicRune.CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING) {
            Resources resources = this.itemView.getContext().getResources();
            this.controlsUtil.getClass();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.control_custom_icon_padding_size);
            this.icon.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        }
    }

    public void setContentDescription(CheckBox checkBox, TextView textView) {
        textView.setImportantForAccessibility(2);
        checkBox.setContentDescription(String.valueOf(textView.getText()));
    }

    @Override // com.android.systemui.controls.management.adapter.CustomHolder
    public final void updateFavorite(boolean z) {
        this.favorite.setChecked(z);
    }

    public void setSubtitleText(CharSequence charSequence) {
    }

    public void updateLottieIcon(CustomControlInterface customControlInterface) {
    }

    public static /* synthetic */ void getIcon$annotations() {
    }

    public static /* synthetic */ void getOverlayCustomIcon$annotations() {
    }

    public static /* synthetic */ void getRemoved$annotations() {
    }

    public static /* synthetic */ void getTitle$annotations() {
    }
}
