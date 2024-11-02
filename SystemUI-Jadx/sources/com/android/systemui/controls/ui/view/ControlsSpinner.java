package com.android.systemui.controls.ui.view;

import android.content.ComponentName;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.controls.controller.util.BadgeProvider;
import com.android.systemui.controls.controller.util.BadgeProviderImpl;
import com.android.systemui.controls.ui.util.ControlsUtil;
import com.android.systemui.controls.ui.view.ControlsSpinner.SelectionItem;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsSpinner<T extends SelectionItem> extends RelativeLayout {
    public BadgeProvider badgeProvider;
    public TextView noSpinner;
    public SelectionItem previous;
    public ControlsAppCompatSpinner spinner;
    public SpinnerItemSelectionChangedCallback spinnerItemSelectedChangedCallback;
    public SpinnerTouchCallback spinnerTouchCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ItemAdapter extends ArrayAdapter {
        public final BadgeProvider badgeProvider;
        public final int dropDownLayout;
        public final LayoutInflater layoutInflater;
        public int mSelectedIndex;
        public final Context parentContext;
        public final int viewLayout;

        public ItemAdapter(Context context, int i, int i2, BadgeProvider badgeProvider) {
            super(context, i);
            this.parentContext = context;
            this.viewLayout = i;
            this.dropDownLayout = i2;
            this.badgeProvider = badgeProvider;
            this.mSelectedIndex = -1;
            this.layoutInflater = LayoutInflater.from(getContext());
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            Drawable drawable;
            BadgeProvider badgeProvider;
            SelectionItem selectionItem = (SelectionItem) getItem(i);
            if (view == null) {
                view = this.layoutInflater.inflate(this.dropDownLayout, viewGroup, false);
            }
            ImageView imageView = (ImageView) view.requireViewById(R.id.app_icon);
            CharSequence charSequence = null;
            if (selectionItem != null) {
                drawable = selectionItem.getIcon();
            } else {
                drawable = null;
            }
            imageView.setImageDrawable(drawable);
            TextView textView = (TextView) view.requireViewById(R.id.controls_spinner_item);
            if (selectionItem != null) {
                charSequence = selectionItem.getAppName();
            }
            textView.setText(charSequence);
            if (BasicRune.CONTROLS_BADGE && selectionItem != null && (badgeProvider = this.badgeProvider) != null) {
                ComponentName componentName = selectionItem.getComponentName();
                View requireViewById = view.requireViewById(R.id.badge);
                BadgeProviderImpl badgeProviderImpl = (BadgeProviderImpl) badgeProvider;
                if (badgeProviderImpl.badgeRequiredSet.contains(componentName.getPackageName())) {
                    requireViewById.setVisibility(0);
                } else {
                    requireViewById.setVisibility(8);
                }
                badgeProviderImpl.setDescription(selectionItem.getComponentName(), view, selectionItem.getAppName());
            }
            if (this.mSelectedIndex == i) {
                int color = this.parentContext.getColor(R.color.control_spinner_item_drop_down_selected_color);
                ImageView imageView2 = (ImageView) view.requireViewById(R.id.check_icon);
                imageView2.setImageResource(R.drawable.ic_spinner_app_selected);
                imageView2.setImageTintList(ColorStateList.valueOf(color));
                textView.setTextColor(color);
            }
            return view;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            CharSequence charSequence;
            SelectionItem selectionItem = (SelectionItem) getItem(i);
            if (view == null) {
                view = this.layoutInflater.inflate(this.viewLayout, viewGroup, false);
            }
            TextView textView = (TextView) view.requireViewById(R.id.controls_spinner_item);
            if (selectionItem != null) {
                charSequence = selectionItem.getAppName();
            } else {
                charSequence = null;
            }
            textView.setText(charSequence);
            ControlsUtil.Companion.updateFontSize$default(ControlsUtil.Companion, textView, R.dimen.control_spinner_text_size);
            return view;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class SelectionItem {
        public final CharSequence appName;
        public final ComponentName componentName;
        public final Drawable icon;

        public SelectionItem(CharSequence charSequence, Drawable drawable, ComponentName componentName) {
            this.appName = charSequence;
            this.icon = drawable;
            this.componentName = componentName;
        }

        public CharSequence getAppName() {
            return this.appName;
        }

        public ComponentName getComponentName() {
            return this.componentName;
        }

        public Drawable getIcon() {
            return this.icon;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface SpinnerItemSelectionChangedCallback {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface SpinnerTouchCallback {
    }

    public ControlsSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initView();
    }

    public final void initView() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.controls_spinner, (ViewGroup) this, false);
        addView(inflate);
        this.spinner = (ControlsAppCompatSpinner) inflate.requireViewById(R.id.controls_app_spinner);
        this.noSpinner = (TextView) inflate.requireViewById(R.id.controls_spinner_item);
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        TextView textView = this.noSpinner;
        TextView textView2 = null;
        if (textView == null) {
            textView = null;
        }
        textView.setFocusable(accessibilityManager.isEnabled());
        ControlsUtil.Companion companion = ControlsUtil.Companion;
        TextView textView3 = this.noSpinner;
        if (textView3 != null) {
            textView2 = textView3;
        }
        ControlsUtil.Companion.updateFontSize$default(companion, textView2, R.dimen.control_spinner_text_size);
    }

    public ControlsSpinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initView();
    }
}
